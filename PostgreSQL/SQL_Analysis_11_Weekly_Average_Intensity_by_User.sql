select
	id,
	date_trunc('week', activity_date) as week,
	round(avg(average_intensity::numeric), 2) as avg_weekly_intensity
from user_daily_activity
group by id, week;