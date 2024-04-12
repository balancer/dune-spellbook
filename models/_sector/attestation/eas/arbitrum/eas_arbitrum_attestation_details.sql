{{
  config(
    schema = 'eas_arbitrum',
    alias = 'attestation_details',
    materialized = 'incremental',
    file_format = 'delta',
    incremental_strategy = 'merge',
    unique_key = ['schema_uid', 'attestation_uid', 'ordinality'],
    incremental_predicates = [incremental_predicate('DBT_INTERNAL_DEST.block_time')]
  )
}}

{{
  eas_attestation_details(
    blockchain = 'arbitrum',
    project = 'eas',
    version = '1'
  )
}}
