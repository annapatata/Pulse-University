-- CHECKED 
SELECT DISTINCT p.performer_name,
	 IF(py.years_id IS NOT NULL, 'YES', 'NO') AS Participated
FROM Performer p 
JOIN PerformerSubgenre ps ON p.performer_id = ps.performer_id
JOIN Subgenre s ON ps.subgenre_id = s.subgenre_id
 LEFT JOIN PerformerYears py ON p.performer_id = py.performer_id AND py.years_id = 2018
WHERE s.genre_id = 'Rock'
ORDER BY p.performer_name;

--WITH VIEW
SELECT DISTINCT p.performer_name,
	 IF(py.years_id IS NOT NULL, 'YES', 'NO') AS Participated
FROM Performer p 
JOIN PerformerGenre pg ON p.performer_id = pg.performer_id
LEFT JOIN PerformerYears py ON p.performer_id = py.performer_id AND py.years_id = 2018
WHERE pg.genre = 'Rock'
ORDER BY p.performer_name;
