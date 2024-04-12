{{
    config(
        schema = 'wigoswap_fantom',
        alias = 'base_trades',
        materialized = 'incremental',
        file_format = 'delta',
        incremental_strategy = 'merge',
        unique_key = ['tx_hash', 'evt_index'],
        incremental_predicates = [incremental_predicate('DBT_INTERNAL_DEST.block_time')]
    )
}}

{{
    uniswap_compatible_v2_trades(
        blockchain = 'fantom',
        project = 'wigoswap',
        version = '1',
        Pair_evt_Swap = source('wigoswap_fantom', 'Pair_evt_Swap'),
        Factory_evt_PairCreated = source('wigoswap_fantom', 'Factory_evt_PairCreated')
    )
}}
