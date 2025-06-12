SELECT corr(total_steps, calories) as corr_steps_calories,
	corr(total_minutes_asleep, calories) as corr_sleep_calories
FROM user_daily_activity;