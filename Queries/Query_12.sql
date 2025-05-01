
SELECT
	e.festival_day AS Festival_day,
	COUNT(CASE WHEN s.role_name = 'technician' THEN 1 END) AS Technician,
	COUNT(CASE WHEN s.role_name = 'security' THEN 1 END) AS Security,
	COUNT(CASE WHEN s.role_name = 'auxiliary' THEN 1 END) AS Auxiliary
FROM 
	Event e
JOIN 
	Employment es ON e.event_id = es.event_id
JOIN 
	Staff s ON s.staff_id = es.staff_id
WHERE 
	e.festival_id = ?
GROUP BY 
	e.festival_day ;
 
	

	