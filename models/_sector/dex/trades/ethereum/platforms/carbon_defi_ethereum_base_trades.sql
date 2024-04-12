{{
    config(
        schema = 'carbon_defi_ethereum',
        alias = 'base_trades',
        materialized = 'incremental',
        file_format = 'delta',
        incremental_strategy = 'merge',
        unique_key = ['tx_hash', 'evt_index'],
        incremental_predicates = [incremental_predicate('DBT_INTERNAL_DEST.block_time')]
    )
}}

{% set weth_address = '0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2' %}

WITH dexs AS (
    SELECT
        t.evt_block_number AS block_number,
        t.evt_block_time AS block_time,
        t.trader AS taker,
        CAST(NULL as VARBINARY) as maker,
        t.targetAmount AS token_bought_amount_raw,
        t.sourceAmount AS token_sold_amount_raw,
        CASE
            WHEN t.targetToken = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee THEN {{weth_address}}
            ELSE t.targetToken
        END AS token_bought_address, --Using WETH for easier joining with USD price table
        CASE
            WHEN t.sourceToken = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee THEN {{weth_address}}
            ELSE t.sourceToken
        END AS token_sold_address, --Using WETH for easier joining with USD price table
        t.contract_address AS project_contract_address,
        t.evt_tx_hash AS tx_hash,
        t.evt_index
    FROM {{ source('carbon_defi_ethereum', 'CarbonController_evt_TokensTraded') }} t
    {% if is_incremental() %}
    WHERE {{incremental_predicate('t.evt_block_time')}}
    {% endif %}
)

SELECT
    'ethereum' AS blockchain,
    'carbon_defi' AS project,
    '1' AS version,
    CAST(date_trunc('month', dexs.block_time) AS date) AS block_month,
    CAST(date_trunc('day', dexs.block_time) AS date) AS block_date,
    dexs.block_time,
    dexs.block_number,
    dexs.token_bought_amount_raw,
    dexs.token_sold_amount_raw,
    dexs.token_bought_address,
    dexs.token_sold_address,
    dexs.taker,
    dexs.maker,
    dexs.project_contract_address,
    dexs.tx_hash,
    dexs.evt_index
FROM dexs
