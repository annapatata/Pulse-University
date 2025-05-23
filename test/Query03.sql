-- CHECKED

SELECT 
	pf.performer_name AS Performer,
	e.festival_id AS Festival,
	COUNT(*) AS warmup_count
FROM Performance p
JOIN Performer pf ON p.performer_id = pf.performer_id
JOIN Event_P e ON e.event_id=p.event_id
WHERE p.type_id = 'warm-up'
GROUP BY pf.performer_id, e.festival_id
HAVING COUNT(*) >= 3

-- VIEWS

SELECT 
	p.performer AS Performer,
	e.festival_id AS Festival,
	COUNT(*) AS warmup_count
FROM PerformerPerformance p
JOIN Event_P e ON e.event_id=p.Event
WHERE p.Type = 'warm-up'
GROUP BY p.performer_id, e.festival_id
HAVING COUNT(*) >= 3;
