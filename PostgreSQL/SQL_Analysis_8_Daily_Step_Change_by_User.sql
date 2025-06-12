select
	id,
	activity_date,
	total_steps,
	lag(total_steps) over (partition by id order by activity_date) as prev_day_steps,
	(total_steps - lag(total_steps) over (partition by id order by activity_date)) as step_change
from user_daily_activity;