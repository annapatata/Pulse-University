
-- CHECKED
SELECT 
	festival_id AS Festival_year, visitor_id AS Visitor, Event_number
FROM(
	SELECT
		e.festival_id,
		t.visitor_id,
		COUNT(*) AS Event_number
	FROM
		Ticket t
	JOIN
		Event_p e ON t.event_id = e.event_id AND t.activated = 1
	GROUP BY
		e.festival_id, t.visitor_id
	HAVING 
		Event_number > 3
)AS EventCounts
ORDER BY Festival_year, Event_number
