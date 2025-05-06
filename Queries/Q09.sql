--CHECKED
SELECT 
	EventCounts.visitor_id AS Visitor
FROM(
	SELECT
		t.visitor_id,
		COUNT(*) AS Event_number
	FROM
		Ticket t
	JOIN
		Event_P e ON t.event_id = e.event_id
	WHERE 
		e.start_time BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND CURDATE()
	GROUP BY
		t.visitor_id
)AS EventCounts
WHERE
	EventCounts.Event_number = 3;
