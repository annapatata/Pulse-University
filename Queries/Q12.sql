-- CHECKED
SELECT
	e.festival_id,
	e.festival_day AS Festival_day,
	COUNT(CASE WHEN s.role_id = 1 THEN 1 END) AS Auxiliary,
	COUNT(CASE WHEN s.role_id = 3 THEN 1 END) AS Security,    
	COUNT(CASE WHEN s.role_id = 2 THEN 1 END) AS Technician
FROM 
	Event_P e
JOIN 
	Employment es ON e.event_id = es.event_id
JOIN 
	Staff s ON s.staff_id = es.staff_id
-- WHERE e.festival_id = 2018 -- for a specific year
GROUP BY 
	e.festival_id, e.festival_day
ORDER BY 
	e.festival_id, e.festival_day;
