{{
    config(
        schema = 'rubicon_optimism',
        alias = 'base_trades',
        materialized = 'incremental',
        file_format = 'delta',
        incremental_strategy = 'merge',
        unique_key = ['tx_hash', 'evt_index'],
        incremental_predicates = [incremental_predicate('DBT_INTERNAL_DEST.block_time')]
    )
}}

WITH dexs AS (
    --From the prespective of the taker - LogTake
    SELECT
        t.evt_block_number AS block_number,
        t.evt_block_time AS block_time,
        t.taker AS taker,
        t.maker AS maker,
        t.take_amt AS token_bought_amount_raw,
        t.give_amt AS token_sold_amount_raw,
        t.pay_gem AS token_bought_address,
        t.buy_gem AS token_sold_address,
        t.contract_address AS project_contract_address,
        t.evt_tx_hash AS tx_hash,
        t.evt_index
    FROM {{ source('rubicon_optimism', 'RubiconMarket_evt_LogTake') }} t
    {% if is_incremental() %}
    WHERE {{incremental_predicate('t.evt_block_time')}}
    {% endif %}

    UNION ALL

    --From the prespective of the taker - emitTake
    SELECT
        t.evt_block_number AS block_number,
        t.evt_block_time AS block_time,
        t.taker AS taker,
        t.maker AS maker,
        t.take_amt AS token_bought_amount_raw,
        t.give_amt AS token_sold_amount_raw,
        t.pay_gem AS token_bought_address,
        t.buy_gem AS token_sold_address,
        t.contract_address AS project_contract_address,
        t.evt_tx_hash AS tx_hash,
        t.evt_index
    FROM {{ source('rubicon_optimism', 'RubiconMarket_evt_emitTake') }} t
    {% if is_incremental() %}
    WHERE {{incremental_predicate('t.evt_block_time')}}
    {% endif %}
)

SELECT
    'optimism' AS blockchain,
    'rubicon' AS project,
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
