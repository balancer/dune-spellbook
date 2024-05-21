{% macro 
    bpt_supply_changes_macro(
        blockchain, version
    ) 
%}
WITH pool_labels AS (
        SELECT
            address AS pool_id,
            name AS pool_symbol,
            pool_type
        FROM {{ ref('labels_balancer_v2_pools') }}
        WHERE blockchain = '{{blockchain}}'
    ),

      -- Extract mints and burns from transfers
    transfers AS (
        SELECT
            t.evt_block_time,
            t.evt_block_number,
            t.evt_tx_hash,
            t.evt_index,
            t.contract_address AS token,
            CASE 
                WHEN t."from" = 0x0000000000000000000000000000000000000000 
                THEN 'mint' 
                WHEN t.to = 0x0000000000000000000000000000000000000000 
                THEN 'burn'
                END AS label,
            l.pool_type,
            l.name,
            CASE 
                WHEN t."from" = 0x0000000000000000000000000000000000000000 
                THEN value 
                WHEN t.to = 0x0000000000000000000000000000000000000000 
                THEN - value
                ELSE 0
                END AS amount
        FROM {{ ref('balancer_bpt_prices') }} t
        LEFT JOIN pool_labels l ON t.contract_address = l.address
        AND l.blockcain = t.blockchain 
        WHERE t.blockchain = '{{blockchain}}'
        AND t.version = '{{version}}'
        {% if is_incremental() %}
        AND {{ incremental_predicate('t.evt_block_time') }}
        {% endif %}
    ),

    -- Calculating Joins(mint) and Exits(burn) via Swap
    joins AS (
        SELECT 
            s.evt_block_time,
            s.evt_block_number,
            s.evt_tx_hash, 
            s.evt_index,
            s.tokenOut AS token,
            'join' AS label,
            l.pool_type,
            l.name,
            CASE WHEN l.pool_type IN ('weighted') 
            THEN 0
            ELSE s.amountOut 
            END AS amount
        FROM {{ source('balancer_v2_' + blockchain, 'Vault_evt_Swap') }} s
        LEFT JOIN pool_labels l ON BYTEARRAY_SUBSTRING(s.poolId, 1, 20) = l.address
        WHERE tokenIn = BYTEARRAY_SUBSTRING(s.poolId, 1, 20)
        {% if is_incremental() %}
        WHERE {{ incremental_predicate('s. evt_block_time') }}
        {% endif %} 

    ),

    exits AS (
        SELECT 
            s.evt_block_time,
            s.evt_block_number,
            s.evt_tx_hash, 
            s.evt_index,
            s.tokenIn AS token,
            'exit' AS label,
            l.pool_type,
            l.name,
            CASE WHEN l.pool_type IN ('weighted') 
            THEN 0
            ELSE - s.amountIn
            END AS amount
        FROM balancer_v2_ethereum.Vault_evt_Swap s
        FROM {{ source('balancer_v2_' + blockchain, 'Vault_evt_Swap') }} s
        LEFT JOIN pool_labels l ON BYTEARRAY_SUBSTRING(s.poolId, 1, 20) = l.address
        WHERE tokenIn = BYTEARRAY_SUBSTRING(s.poolId, 1, 20)
        {% if is_incremental() %}
        AND {{ incremental_predicate('s. evt_block_time') }}
        {% endif %}      
    )
    
            SELECT
            date_trunc('day', evt_block_time) AS block_date,
            evt_block_time,
            evt_block_number,
            '{{blockchain}}' AS blockchain,
            evt_tx_hash,
            evt_index,
            pool_type,
            name AS pool_symbol,
            '{{version}}' AS version,
            label,
            token AS token_address,
            amount AS delta_amount_raw,
            amount / POWER (10, 18) AS delta_amount --18 decimals standard for BPTs
    FROM 
    (
        SELECT 
            *
        FROM joins 
        
        UNION ALL
        
        SELECT 
            *
        FROM exits
        
        UNION ALL
        
        SELECT 
            *
        FROM transfers        
        WHERE label IS NOT NULL
            )
    {% if is_incremental() %}
    WHERE {{ incremental_predicate('s. evt_block_time') }}
    {% endif %}    

    {% endmacro %}