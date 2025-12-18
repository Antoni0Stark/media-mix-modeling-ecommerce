WITH weekly_data AS (
    SELECT
        date,
        paid_search_spend,
        paid_social_spend,
        display_spend,
        email_volume,
        revenue,
        LAG(paid_search_spend, 1) OVER (ORDER BY date) AS paid_search_lag1,
        LAG(paid_social_spend, 1) OVER (ORDER BY date) AS paid_social_lag1
    FROM marketing_data
)

SELECT *
FROM weekly_data
ORDER BY date;