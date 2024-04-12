{{
  config(
    schema = 'lending_avalanche_c',
    alias = 'base_supply',
    materialized = 'view'
  )
}}

{%
  set models = [
    ref('aave_v2_avalanche_c_base_supply'),
    ref('aave_v3_avalanche_c_base_supply'),
    ref('benqi_avalanche_c_base_supply'),
    ref('granary_avalanche_c_base_supply')
  ]
%}

{% for model in models %}
select
  blockchain,
  project,
  version,
  transaction_type,
  token_address,
  depositor,
  withdrawn_to,
  liquidator,
  amount,
  block_month,
  block_time,
  block_number,
  tx_hash,
  evt_index
from {{ model }}
{% if not loop.last %}
union all
{% endif %}
{% endfor %}
