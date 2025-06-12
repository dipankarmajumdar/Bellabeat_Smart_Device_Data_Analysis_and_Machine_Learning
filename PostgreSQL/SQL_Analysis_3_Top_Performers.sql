SELECT id, activity_date, total_steps, calories
FROM user_daily_activity
ORDER BY total_steps DESC
LIMIT 20;