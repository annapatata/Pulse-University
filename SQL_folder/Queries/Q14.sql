WITH fgp1 AS (
	SELECT
		festival,
		genre,
		COUNT(*) AS performances
	FROM
		(SELECT 
			p.performance_id AS performance,
			e.festival_id AS festival,
			ps.genre AS genre
		FROM
			Event_P e 
		JOIN Performance p ON e.event_id = p.event_id
		JOIN PerformerGenre ps ON ps.performer_id = p.performer_id
		)AS fgp
	GROUP BY 
		festival,genre
	HAVING COUNT(*) >=3
)

SELECT 
	f1.genre,
	f1.festival,
	f2.festival,
	f1.performances
FROM fgp1 as f1
JOIN fgp1 AS f2 ON
	f2.festival = f1.festival + 1 	AND
	f1.genre = f2.genre AND
	f1.performances = f2.performances;
