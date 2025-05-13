
-- CHECKED

WITH s1 AS (
	SELECT DISTINCT
		ps.performer_id,
		s.genre_id
	FROM PerformerSubgenre ps 
	JOIN Subgenre s ON ps.subgenre_id = s.subgenre_id
)
	
SELECT 
	s1.genre_id AS Genre_1,
	s2.genre_id AS Genre_2,
	COUNT(*) AS Artists
FROM 
	s1
JOIN s1 AS s2 ON s1.performer_id = s2.performer_id
WHERE s1.genre_id < s2.genre_id
GROUP BY 
	s1.genre_id, 
	s2.genre_id 
ORDER BY 
	COUNT(*) DESC
LIMIT 3;

-- WITH VIEW
SELECT 
	p1.genre AS Genre_1,
	p2.genre AS Genre_2,
	COUNT(*) AS Artists
FROM 
     PerformerGenre p1
JOIN 
	PerformerGenre p2 
	ON p1.performer_id = p2.performer_id
WHERE
	p1.genre < p2.genre
GROUP BY 
	p1.genre, p2.genre 
ORDER BY 
	COUNT(*) DESC
LIMIT 3;
