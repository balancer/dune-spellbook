{{ config(
    alias = 'borrow',
    post_hook='{{ expose_spells(\'["ethereum"]\',
                                "project",
                                "ironbank",
                                \'["michael-ironbank"]\') }}'
) }}

SELECT
'ironbank' AS project,
'1' AS version,
evt_block_number AS block_number,
evt_block_time AS block_time,
evt_tx_hash AS tx_hash,
evt_index,
borrower,
i.underlying_token_address AS asset_address,
borrowAmount AS borrow_amount
FROM (
    SELECT * FROM {{ source('ironbank_ethereum', 'CErc20Delegator_evt_Borrow') }}
) events
LEFT JOIN {{ ref('ironbank_ethereum_itokens') }} i ON events.contract_address = i.contract_address