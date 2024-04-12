{% macro soundxyz_v2_referral_rewards(
    blockchain
    ,SuperMinterV2_evt_Minted
    )
%}

select
    '{{blockchain}}' as blockchain
    ,'soundxyz' as project
    ,'v2' as version
    ,evt_block_number as block_number
    ,evt_block_time as block_time
    ,cast(date_trunc('day',evt_block_time) as date) as block_date
    ,cast(date_trunc('month',evt_block_time) as date) as block_month
    ,evt_tx_hash as tx_hash
    ,'NFT' as category
    ,from_hex(json_value(e.data, 'lax $.affiliate' RETURNING varchar DEFAULT '0x0000000000000000000000000000000000000000' ON EMPTY)) as referrer_address
    ,e."to" as referee_address
    ,{{ var("ETH_ERC20_ADDRESS") }} as currency_contract
    ,cast(json_value(e.data, 'lax $.finalAffiliateFee' RETURNING bigint DEFAULT 0 ON EMPTY) as uint256) as reward_amount_raw
    ,edition as project_contract_address
    ,evt_index as sub_tx_id
    ,tx."from" as tx_from
    ,tx.to as tx_to
from {{SuperMinterV2_evt_Minted}} e
inner join {{source(blockchain, 'transactions')}} tx
    on evt_block_number = tx.block_number
    and evt_tx_hash = tx.hash
    {% if is_incremental() %}
    and {{incremental_predicate('tx.block_time')}}
    {% endif %}
{% if is_incremental() %}
where {{incremental_predicate('evt_block_time')}}
{% endif %}
{% endmacro %}
