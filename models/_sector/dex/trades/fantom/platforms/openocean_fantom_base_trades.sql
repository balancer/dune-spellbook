{{
    config(
        schema = 'openocean_fantom',
        alias = 'base_trades',
        materialized = 'incremental',
        file_format = 'delta',
        incremental_strategy = 'merge',
        unique_key = ['tx_hash', 'evt_index'],
        incremental_predicates = [incremental_predicate('DBT_INTERNAL_DEST.block_time')]
    )
}}

{% set burn = '0x0000000000000000000000000000000000000000' %}
{% set w_native = '0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83' %}

WITH dexs AS (
    SELECT
        t.evt_block_number AS block_number,
        t.evt_block_time AS block_time,
        t.dstReceiver as taker,
        CAST(NULL AS VARBINARY) AS maker,
        t.returnAmount as token_bought_amount_raw,
        t.spentAmount as token_sold_amount_raw,
        CASE WHEN t.dstToken = {{ burn }} THEN {{ w_native }} ELSE t.dstToken END as token_bought_address,  
        CASE WHEN t.srcToken = {{ burn }} THEN {{ w_native }} ELSE t.srcToken END as token_sold_address,
        t.contract_address AS project_contract_address,
        t.evt_tx_hash AS tx_hash,
        t.evt_index
    FROM {{ source('open_ocean_fantom', 'OpenOceanExchange_evt_Swapped') }} t
    {% if is_incremental() %}
    WHERE {{incremental_predicate('t.evt_block_time')}}
    {% endif %}
)

SELECT
    'fantom' AS blockchain,
    'openocean' AS project,
    '2' AS version,
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
