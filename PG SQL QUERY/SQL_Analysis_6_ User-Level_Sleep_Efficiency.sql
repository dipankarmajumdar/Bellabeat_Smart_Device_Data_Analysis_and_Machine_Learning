SELECT id,
       ROUND(AVG(total_minutes_asleep * 1.0 / NULLIF(total_time_in_bed, 0))::numeric, 2) AS avg_sleep_efficiency
FROM user_daily_activity
WHERE total_time_in_bed IS NOT NULL
GROUP BY id
ORDER BY avg_sleep_efficiency DESC;