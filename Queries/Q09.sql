--new version
WITH ec AS (
    SELECT
        t.visitor_id AS visitor,
        e.festival_id AS fest_year, 
        COUNT(*) AS eventcounts
    FROM
        Ticket t
    JOIN
        Event_P e ON t.event_id = e.event_id 
    WHERE
        t.activated = 1
    GROUP BY
        t.visitor_id, e.festival_id
    HAVING COUNT(*) > 3
)

SELECT 
    ec1.visitor,
    ec1.fest_year AS festival1,
    ec2.fest_year AS festival2,
    ec1.eventcounts AS EventCounts
FROM ec AS ec1 
JOIN ec AS ec2 
    ON ec2.fest_year = ec1.fest_year + INTERVAL 1 YEAR 
   AND ec1.visitor = ec2.visitor 
   AND ec1.eventcounts = ec2.eventcounts;


