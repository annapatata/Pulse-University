SELECT 
	p.performer AS Performer,
	e.festival_id AS Festival,
	COUNT(*) AS warmup_count
FROM PerformerPerformance p
JOIN Event_P e ON e.event_id=p.Event
WHERE p.Type = 'warm-up'
GROUP BY p.performer_id, e.festival_id
HAVING COUNT(*) >= 3;
