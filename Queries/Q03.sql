
SELECT 
	pf.performer_name AS Performer,
	e.festival_id AS Festival,
	COUNT(*) AS warmup_count
FROM Performance p
JOIN Performer pf ON p.performer_id = pf.performer_id
JOIN Event e ON e.event_id=p.event_id
WHERE p.type_id = 'warm-up'
GROUP BY pf.performer_id, e.festival_id
HAVING COUNT(*) >= 3
