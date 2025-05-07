-- CHECKED
SELECT 
	e.festival_id AS Festival
	EventCounts.visitor_id AS Visitor
	EventCounts.Event_number AS Events
	
FROM(
	SELECT
		t.visitor_id,
		COUNT(*) AS Event_number
	FROM
		Ticket t
	JOIN
		Event_P e ON t.event_id = e.event_id
	GROUP BY
		t.visitor_id
)AS EventCounts
WHERE
	EventCounts.Event_number > 3;
