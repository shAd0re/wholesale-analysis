-- Campaign type distribution with total spend
SELECT 
    campaign_type,
    COUNT(*) as campaign_count,
    ROUND(SUM(amount_spent)::numeric, 2) as total_spend,
    ROUND(AVG(amount_spent::numeric), 2) as avg_spend
FROM public.wholesale
GROUP BY campaign_type
ORDER BY total_spend DESC;
