SELECT DATE_TRUNC('month', activity_date) AS month,
       ROUND(AVG(total_steps)::numeric, 2) AS avg_steps,
       ROUND(AVG(calories)::numeric, 2) AS avg_calories
FROM user_daily_activity
GROUP BY month
ORDER BY month;
