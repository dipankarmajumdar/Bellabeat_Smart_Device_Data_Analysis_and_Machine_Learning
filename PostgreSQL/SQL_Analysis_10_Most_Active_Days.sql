SELECT 
	id, 
	activity_date, 
	very_active_minutes_x, 
	calories
from user_daily_activity
where very_active_minutes_x > 60
order by very_active_minutes_x desc;