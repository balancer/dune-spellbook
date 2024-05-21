{% macro 
    balancer_token_balance_changes_macro(
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

    swaps_changes AS (
        SELECT
            evt_block_time,
            evt_block_number,
            evt_tx_hash,
            evt_index,
            pool_id,
            token,
            SUM(COALESCE(delta, INT256 '0')) AS delta
        FROM
            (
                SELECT
                    evt_block_time,
                    evt_block_number,
                    evt_tx_hash,
                    poolId AS pool_id,
                    tokenIn AS token,
                    CAST(amountIn as int256) AS delta
                FROM {{ source('balancer_v2_' + blockchain, 'Vault_evt_Swap') }}
                {% if is_incremental() %}
                WHERE {{ incremental_predicate('evt_block_time') }}
                {% endif %}

                UNION ALL

                SELECT
                    evt_block_time,
                    evt_block_number,
                    evt_tx_hash,
                    poolId AS pool_id,
                    tokenOut AS token,
                    -CAST(amountOut AS int256) AS delta
                FROM {{ source('balancer_v2_' + blockchain, 'Vault_evt_Swap') }}
                {% if is_incremental() %}
                WHERE {{ incremental_predicate('evt_block_time') }}
                {% endif %}
            ) swaps
        GROUP BY 1, 2, 3, 4, 5
    ),

    zipped_balance_changes AS (
        SELECT
            evt_block_time,
            evt_block_number,
            evt_tx_hash,
            evt_index,
            poolId AS pool_id,
            t.tokens,
            d.deltas,
            p.protocolFeeAmounts
        FROM {{ source('balancer_v2_' + blockchain, 'Vault_evt_PoolBalanceChanged') }}
        CROSS JOIN UNNEST (tokens) WITH ORDINALITY as t(tokens,i)
        CROSS JOIN UNNEST (deltas) WITH ORDINALITY as d(deltas,i)
        CROSS JOIN UNNEST (protocolFeeAmounts) WITH ORDINALITY as p(protocolFeeAmounts,i)
        WHERE t.i = d.i 
        AND d.i = p.i
        {% if is_incremental() %}
        AND {{ incremental_predicate('evt_block_time') }}
        {% endif %}
        ORDER BY 1, 2, 3
    ),

    balances_changes AS (
        SELECT
            evt_block_time,
            evt_block_number,
            evt_tx_hash,
            evt_index,
            pool_id,
            tokens AS token,
            deltas - CAST(protocolFeeAmounts as int256) AS delta
        FROM zipped_balance_changes
        ORDER BY 1, 2, 3, 4, 5
    ),

    managed_changes AS (
        SELECT
            evt_block_time,
            evt_block_number,
            evt_tx_hash,
            evt_index,
            poolId AS pool_id,
            token,
            cashDelta + managedDelta AS delta
        FROM {{ source('balancer_v2_' + blockchain, 'PoolBalanceManaged') }}
        {% if is_incremental() %}
        WHERE {{ incremental_predicate('evt_block_time') }}
        {% endif %}
    )


        SELECT
            date_trunc('day', b.evt_block_time) AS block_date,
            b.evt_block_time,
            b.evt_block_number,
            '{{blockchain}}' AS blockchain,
            b.evt_tx_hash,
            b.evt_index,
            b.pool_id,
            BYTEARRAY_SUBSTRING(b.pool_id, 1, 20) AS pool_address,
            p.pool_symbol,
            p.pool_type,
            '{{version}}' AS version, 
            b.token AS token_address,
            t.symbol AS token_symbol,
            b.amount AS delta_amount_raw,
            CASE WHEN BYTEARRAY_SUBSTRING(b.pool_id, 1, 20) = b.token
            THEN amount / POWER (10, 18) --for Balancer Pool Tokens
            ELSE amount / POWER (10, COALESCE(t.decimals, 0)) 
            END AS delta_amount
        FROM
            (
                SELECT
                    evt_block_time,
                    evt_block_number,
                    evt_tx_hash,
                    pool_id,
                    token,
                    SUM(COALESCE(delta, INT256 '0')) AS amount
                FROM balances_changes
                GROUP BY 1, 2, 3, 4, 5

                UNION ALL

                SELECT
                    evt_block_time,
                    evt_block_number,
                    evt_tx_hash,
                    pool_id,
                    token,
                    delta AS amount
                FROM
                    swaps_changes

                UNION ALL

                SELECT
                    evt_block_time,
                    evt_block_number,
                    evt_tx_hash,
                    pool_id,
                    token,
                    CAST(delta AS int256) AS amount
                FROM managed_changes
            ) b
        LEFT JOIN {{ source('tokens', 'erc20') }} t ON t.contract_address = b.token
        AND blockchain = '{{blockchain}}'
        LEFT JOIN pool_labels p ON p.pool_id = BYTEARRAY_SUBSTRING(b.pool_id, 1, 20)
        {% if is_incremental() %}
        WHERE {{ incremental_predicate('evt_block_time') }}
        {% endif %}

    {% endmacro %}