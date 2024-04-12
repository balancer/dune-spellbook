{{ config(
    
    schema = 'biswap_v3_bnb',
    alias = 'trades',
    partition_by = ['block_month'],
    materialized = 'incremental',
    file_format = 'delta',
    incremental_strategy = 'merge',
    unique_key = ['block_date', 'blockchain', 'project', 'version', 'tx_hash', 'evt_index'],
    post_hook='{{ expose_spells(\'["bnb"]\',
                                "project",
                                "biswap_v3",
                                \'["chef_seaweed"]\') }}'
    )
}}

{% set project_start_date = '2023-06-26' %}


WITH dexs AS
(
    --Biswap v3 on BNB Chain
    SELECT
        t.evt_block_time AS block_time
        ,CAST(NULL AS VARBINARY)as taker
        ,CAST(NULL AS VARBINARY)as maker
        ,CASE WHEN sellXEarnY = true THEN abs(amountY) ELSE abs(amountX) END AS token_bought_amount_raw
        ,CASE WHEN sellXEarnY = true THEN abs(amountX) ELSE abs(amountY) END AS token_sold_amount_raw
        ,NULL AS amount_usd
        ,CASE WHEN sellXEarnY = true THEN tokenY ELSE tokenX END AS token_bought_address
        ,CASE WHEN sellXEarnY = true THEN tokenX ELSE tokenY END AS token_sold_address
        ,t.contract_address as project_contract_address
        ,t.evt_tx_hash AS tx_hash
        ,CAST(NULL as array<bigint>) AS trace_address
        ,t.evt_index
    FROM
        (select a.*, cast(json_extract_scalar(returnValues, '$.amountX') as uint256) as amountX, cast(json_extract_scalar(returnValues, '$.amountY') as uint256) as amountY
         from {{ source('biswap_v3_bnb', 'BiswapPoolV3_evt_Swap') }} a) t 
    INNER JOIN 
        {{ source('biswap_v3_bnb', 'BiswapFactoryV3_evt_NewPool') }} f
        ON f.pool = t.contract_address
    {% if is_incremental() %}
    WHERE t.evt_block_time >= date_trunc('day', now() - interval '7' day)
    {% endif %}
)


SELECT
    'bnb' AS blockchain
    ,'biswap' AS project
    ,'3' AS version
    ,TRY_CAST(date_trunc('DAY', dexs.block_time) AS date) AS block_date
    ,CAST(date_trunc('month', dexs.block_time) AS DATE) as block_month
    ,dexs.block_time
    ,erc20a.symbol AS token_bought_symbol
    ,erc20b.symbol AS token_sold_symbol
    ,case
        when lower(erc20a.symbol) > lower(erc20b.symbol) then concat(erc20b.symbol, '-', erc20a.symbol)
        else concat(erc20a.symbol, '-', erc20b.symbol)
    end as token_pair
    ,dexs.token_bought_amount_raw / power(10, erc20a.decimals) AS token_bought_amount
    ,dexs.token_sold_amount_raw / power(10, erc20b.decimals) AS token_sold_amount
    ,dexs.token_bought_amount_raw AS token_bought_amount_raw
    ,dexs.token_sold_amount_raw AS token_sold_amount_raw
    ,coalesce(
        dexs.amount_usd
        ,(dexs.token_bought_amount_raw / power(10, p_bought.decimals)) * p_bought.price
        ,(dexs.token_sold_amount_raw / power(10, p_sold.decimals)) * p_sold.price
    ) AS amount_usd
    ,dexs.token_bought_address
    ,dexs.token_sold_address
    ,coalesce(dexs.taker, tx."from") AS taker -- subqueries rely on this COALESCE to avoid redundant joins with the transactions table
    ,dexs.maker
    ,dexs.project_contract_address
    ,dexs.tx_hash
    ,tx."from" AS tx_from
    ,tx.to AS tx_to
    ,dexs.evt_index
FROM dexs
INNER JOIN 
    {{ source('bnb', 'transactions') }} tx
    ON tx.hash = dexs.tx_hash
    {% if not is_incremental() %}
    AND tx.block_time >= TIMESTAMP '{{project_start_date}}'
    {% endif %}
    {% if is_incremental() %}
    AND tx.block_time >= date_trunc('day', now() - interval '7' day)
    {% endif %}
LEFT JOIN {{ source('tokens', 'erc20') }} erc20a
    ON erc20a.contract_address = dexs.token_bought_address 
    AND erc20a.blockchain = 'bnb'
LEFT JOIN {{ source('tokens', 'erc20') }} erc20b
    ON erc20b.contract_address = dexs.token_sold_address
    AND erc20b.blockchain = 'bnb'
LEFT JOIN {{ source('prices', 'usd') }} p_bought
    ON p_bought.minute = date_trunc('minute', dexs.block_time)
    AND p_bought.contract_address = dexs.token_bought_address
    AND p_bought.blockchain = 'bnb'
    {% if not is_incremental() %}
    AND p_bought.minute >= TIMESTAMP '{{project_start_date}}'
    {% endif %}
    {% if is_incremental() %}
    AND p_bought.minute >= date_trunc('day', now() - interval '7' day)
    {% endif %}
LEFT JOIN {{ source('prices', 'usd') }} p_sold
    ON p_sold.minute = date_trunc('minute', dexs.block_time)
    AND p_sold.contract_address = dexs.token_sold_address
    AND p_sold.blockchain = 'bnb'
    {% if not is_incremental() %}
    AND p_sold.minute >= TIMESTAMP '{{project_start_date}}'
    {% endif %}
    {% if is_incremental() %}
    AND p_sold.minute >= date_trunc('day', now() - interval '7' day)
    {% endif %}