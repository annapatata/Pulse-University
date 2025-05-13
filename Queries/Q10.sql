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
