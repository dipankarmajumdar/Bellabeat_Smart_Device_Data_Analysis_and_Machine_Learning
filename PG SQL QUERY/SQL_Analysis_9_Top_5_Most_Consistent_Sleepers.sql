select
	id, 
	count(*) as sleep_days,
	round(stddev(total_minutes_asleep)::numeric, 2) as sleep_stddev,
	round(avg(total_minutes_asleep::numeric), 2) as avg_sleep
from user_daily_activity
where total_minutes_asleep is not null
group by id
having count(*) >= 7
order by sleep_stddev asc
limit 5;