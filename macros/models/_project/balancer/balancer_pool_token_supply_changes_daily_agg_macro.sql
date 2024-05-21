{% macro 
    bpt_supply_changes_daily_agg_macro(
        blockchain, version
    ) 
%}
WITH
    daily_balance AS (
        SELECT
            block_date,
            blockchain,
            pool_type,
            pool_symbol,
            token_address,
            LEAD(block_date, 1, NOW()) OVER (PARTITION BY token_address ORDER BY block_date) AS day_of_next_change,
            SUM(delta_amount) AS daily_amount
        FROM {{ ref('balancer_v2_arbitrum_bpt_supply_changes') }}
        WHERE blockchain = '{{blockchain}}'
        GROUP BY 1, 2, 3, 4, 5
    ),

    calendar AS (
        SELECT date_sequence AS day
        FROM unnest(sequence(date('2021-04-21'), date(now()), interval '1' day)) as t(date_sequence)
    )
    
        SELECT
            c.day AS block_date,
            '{{blockchain}}' as blockchain,
            '{{version}}' AS version,
            b.pool_type,
            b.pool_symbol,
            b.token_address,
            b.daily_delta
        FROM calendar c
        LEFT JOIN cumulative_balance b ON b.block_date <= c.day
        WHERE b.token_address IS NOT NULL
    {% endmacro %}