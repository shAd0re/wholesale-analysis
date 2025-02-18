-- Performance metrics by campaign duration
SELECT 
    "duration_days	",
    COUNT(*) as campaign_count,
    ROUND(AVG(cost_per_result), 2) as avg_cost_per_result,
    ROUND(AVG(amount_spent::numeric), 2) as avg_spend,
    ROUND(AVG(reach), 0) as avg_reach
FROM public.wholesale
GROUP BY "duration_days	"
ORDER BY "duration_days	";