-- CHECKED
SELECT s.staff_id, s.first_name, s.last_name
FROM Staff s 
JOIN Role r ON s.role_id = r.role_id
LEFT JOIN (
	SELECT em.staff_id, ev.event_id
	FROM Employment em 
	JOIN Event_P ev ON em.event_id = ev.event_id
	WHERE DATE(ev.start_time) = '2026-08-23'
) w ON w.staff_id = s.staff_id
WHERE r.role_name = 'Auxiliary'  AND w.event_id IS NULL;
