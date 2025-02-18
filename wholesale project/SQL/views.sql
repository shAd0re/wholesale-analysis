-- Create view for campaign performance summary
CREATE VIEW campaign_performance_summary AS
SELECT 
    campaign_type,
    COUNT(*) as campaign_count,
    ROUND(AVG(amount_spent), 2) as avg_spend,
    ROUND(AVG(reach), 0) as avg_reach,
    ROUND(AVG(impressions), 0) as avg_impressions,
    ROUND(AVG(cost_per_result), 2) as avg_cost_per_result,
    ROUND(AVG(amount_spent / budget) * 100, 2) as avg_budget_utilization
FROM public.wholesale
GROUP BY campaign_type;

-- Create view for daily performance metrics
CREATE VIEW daily_performance_metrics AS
SELECT 
    "duration_days	",
    campaign_type,
    ROUND(AVG(amount_spent / "duration_days	"), 2) as avg_daily_spend,
    ROUND(AVG(reach / "duration_days	"), 0) as avg_daily_reach,
    ROUND(AVG(impressions / "duration_days	"), 0) as avg_daily_impressions
FROM public.wholesale
WHERE "duration_days	" > 0
GROUP BY "duration_days	", campaign_type;