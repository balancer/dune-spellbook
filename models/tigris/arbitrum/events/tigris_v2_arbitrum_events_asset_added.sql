{{ config(
    schema = 'tigris_v2_arbitrum',
    alias = 'events_asset_added'
    )
 }}

SELECT 
    evt_tx_hash, 
    _asset as asset_id, 
    _name as pair 
FROM 
{{ source('tigristrade_v2_arbitrum', 'PairsContract_evt_AssetAdded') }}
;