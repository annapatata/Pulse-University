WITH fpg1 AS (
	SELECT
		festival,
		genre,
		COUNT(*) AS performances
	FROM
		(SELECT DISTINCT
			p.performance_id AS performance,
			e.festival_id AS festival,
			s.genre_id AS genre
		FROM
			Event e 
		JOIN Performance p ON e.event_id = p.event_id
		JOIN PerformerSubgenre ps ON p.performer_id = ps.performer_id
		JOIN Subgenre s ON s.subgenre_id = ps.subgenre_id
		)AS pfg 
	GROUP BY 
		festival,genre
	HAVING COUNT(*) >=3
)

SELECT DISTINCT 
	fgp1.genre,
	fpg1.festival,
	fpg2.festival,
	fpg1.performances
FROM fpg1 	
JOIN fgp1 AS fgp2 ON
	fgp2.festival = fgp1.festival + 1 	AND
	fgp1.genre = fgp2.genre AND
	fgp1.performances = fgp2.performances;



	



	