SELECT
	festival,
	festival_day,
	COUNT(CASE WHEN role = 1 THEN 1 END) AS Auxiliary,
	COUNT(CASE WHEN role= 3 THEN 1 END) AS Security,    
	COUNT(CASE WHEN role = 2 THEN 1 END) AS Technician
FROM 
	EventStaff
-- WHERE e.festival_id = 2018 -- for a specific year
GROUP BY 
	festival, festival_day
ORDER BY 
	festival, festival_day;
