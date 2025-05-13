

-- CHECKED
WITH Event_Counts AS (
	SELECT
		e.festival_id,
		t.visitor_id,
		COUNT(*) AS Event_number
	FROM
		Ticket t
	JOIN
		Event_p e ON t.event_id = e.event_id
	WHERE 
		t.activated = 1
	GROUP BY
		e.festival_id, t.visitor_id
	HAVING 
		COUNT(*) > 3
)

SELECT 
	ec.festival_id, 
	ec.visitor_id, 
	ec.Event_number 
FROM 
	Event_Counts ec
JOIN (
	SELECT 
		festival_id, 
		Event_number
	FROM
		Event_Counts
	GROUP BY
		festival_id, Event_number
	HAVING COUNT(*)>1
) Choices ON ec.festival_id = Choices.festival_id AND ec.Event_number =  Choices.Event_number
	






