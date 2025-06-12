SELECT total_minutes_asleep, total_steps, calories
FROM user_daily_activity
WHERE total_minutes_asleep IS NOT NULL;