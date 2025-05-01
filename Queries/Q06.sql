SELECT 
	t.event_id AS Event,
	(r.voice + r.light_sound + r.stage_presence + r.organisation + r.overall)/5 AS Score
FROM 
	Ticket t 
LEFT JOIN 
	Review r ON r.EAN = t.EAN 
WHERE t.visitor_id = ? ;
