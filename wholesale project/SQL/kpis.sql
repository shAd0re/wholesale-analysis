-- Calculate key performance indicators
SELECT 
    campaign_type,
    ROUND(SUM(amount_spent), 2) as total_spend,
    ROUND(SUM(impressions), 0) as total_impressions,
    ROUND(SUM(amount_spent) * 1000.0 / NULLIF(SUM(impressions), 0), 2) as CPM,
    ROUND(SUM(amount_spent) / NULLIF(SUM(reach), 0), 4) as cost_per_reach,
    ROUND(AVG(impressions::float / NULLIF(reach, 0))::numeric, 2) as avg_frequency
FROM public.wholesale
GROUP BY campaign_type
HAVING SUM(impressions) > 0
ORDER BY CPM;
