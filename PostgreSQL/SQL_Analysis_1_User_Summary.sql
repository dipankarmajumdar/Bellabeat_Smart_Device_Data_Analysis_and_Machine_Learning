SELECT 
	id,
	COUNT(*) AS active_days,
	AVG(total_steps) AS avg_steps,
	AVG(calories) AS avg_calories,
	AVG(hr_mean) AS avg_heart_rate
FROM user_daily_activity
GROUP BY id;