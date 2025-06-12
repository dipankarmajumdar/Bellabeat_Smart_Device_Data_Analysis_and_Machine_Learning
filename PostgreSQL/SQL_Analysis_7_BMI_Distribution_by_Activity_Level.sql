select
	case
		when total_steps >= 10000 then 'Active'
		when total_steps between 5000 and 9000 then 'Moderate'
		else 'Sedentary'
	end as avtivity_level,
	round(avg(bmi::numeric), 2) as avg_bmi
from user_daily_activity
where bmi is not null
group by avtivity_level;