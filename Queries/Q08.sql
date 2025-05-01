
SELECT s.first_name, s.last_name
FROM Staff s 
LEFT JOIN (
	SELECT em.staff_id, ev.event_id
	FROM Employment em 
	JOIN Event ev ON em.event_id = ev.event_id
	WHERE DATE(ev.start_time) = '2027-07-25'
) w ON w.staff_id = s.staff_id
WHERE s.role_name = 'supportive' AND w.event_id IS NULL;
