select 
	round(avg(hr_mean::numeric), 2) as avg_heart_rate,
	round(avg(total_steps::numeric), 2) as avg_steps,
	round(avg(calories::numeric), 2) as avg_calories
from user_daily_activity
where hr_mean is not null;