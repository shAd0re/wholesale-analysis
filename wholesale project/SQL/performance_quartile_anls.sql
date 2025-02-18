-- Performance quartile analysis
WITH performance_metrics AS (
    SELECT 
        *,
        amount_spent / NULLIF(results, 0) as actual_cost_per_result,
        NTILE(4) OVER (PARTITION BY campaign_type ORDER BY amount_spent / NULLIF(results, 0)) as performance_quartile
    FROM public.wholesale
    WHERE results > 0
)
SELECT 
    campaign_type,
    performance_quartile,
    COUNT(*) as campaign_count,
    ROUND(AVG(actual_cost_per_result), 2) as avg_cost_per_result,
    ROUND(AVG(reach), 0) as avg_reach,
    ROUND(AVG(amount_spent), 2) as avg_spend
FROM performance_metrics
GROUP BY campaign_type, performance_quartile
ORDER BY campaign_type, performance_quartile;