SELECT 
	t.event_id AS Event,
	(AVG(r.voice) + AVG(r.light_sound) + AVG(r.stage_presence) + AVG(r.organisation) + AVG(r.overall))/5 AS Score
FROM 
	Ticket t 
LEFT JOIN 
	Review r ON r.EAN = t.EAN 
WHERE t.visitor_id = ?
GROUP BY
	t.event_id ;
