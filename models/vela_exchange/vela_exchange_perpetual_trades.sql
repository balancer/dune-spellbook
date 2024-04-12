{{ config(
    schema = 'vela_exchange',
    alias = 'perpetual_trades'
    )
}}

{% set vela_exchange_perpetual_trade_models = [
 ref('vela_exchange_base_perpetual_trades')
] %}

SELECT *
FROM
(
    {% for vela_exchange_perpetual_model in vela_exchange_perpetual_trade_models %}
    SELECT
        blockchain
		,block_date
        ,block_month
        ,block_time
        ,virtual_asset
        ,underlying_asset
        ,market
        ,market_address
        ,volume_usd
        ,fee_usd
        ,margin_usd
        ,trade
        ,project
        ,version
        ,frontend
        ,trader
        ,volume_raw
        ,tx_hash
        ,tx_from
        ,tx_to
        ,evt_index
    FROM {{ vela_exchange_perpetual_model }}
	{% if not loop.last %}
    UNION ALL
    {% endif %}
    {% endfor %}
)