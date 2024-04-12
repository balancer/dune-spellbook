{{  config (
        schema = 'ajna_polygon',
        alias = 'erc20_pools',
        materialized = 'incremental',
        file_format = 'delta',
        incremental_strategy = 'merge',
        unique_key = ['pool_address']
) }}

SELECT
  'polygon' as blockchain,
  case
    when contract_address = 0x1f172F881eBa06Aa7a991651780527C173783Cf6 then 10
    else 9 end as version,
  collateral_ as collateral,
  quote_ as quote,
  pool_ as pool_address,
  cast(interestRate_ as decimal (38, 0)) / 1e18 as starting_interest_rate,
  call_tx_hash as tx_hash,
  call_block_time as block_time,
  date_trunc('day', call_block_time) as block_date,
  call_block_number as block_number
FROM
  {{ source('ajna_polygon', 'ERC20PoolFactory_call_deployPool')}}

JOIN
  (
    select
      pool_,
      evt_tx_hash
    from
      {{source('ajna_polygon', 'ERC20PoolFactory_evt_PoolCreated')}}
  ) on call_tx_hash = evt_tx_hash
  and output_pool_ = pool_

{% if is_incremental() %}

where {{ incremental_predicate('call_block_time') }}

{% endif %}