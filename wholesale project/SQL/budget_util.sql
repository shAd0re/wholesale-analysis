-- Budget utilization analysis
SELECT 
    campaign_type,
    ROUND(AVG(amount_spent / budget) * 100, 2) as avg_budget_utilization,
    COUNT(*) as campaign_count,
    ROUND(AVG(CASE 
        WHEN amount_spent > budget THEN 1 
        ELSE 0 
    END) * 100, 2) as pct_over_budget
FROM public.wholesale
GROUP BY campaign_type
ORDER BY avg_budget_utilization DESC;