SELECT DISTINCT p.performer_name,
	 IF(py.years_id IS NOT NULL, 'YES', 'NO') AS Participated
FROM Performer p 
JOIN PerformerGenre pg ON p.performer_id = pg.performer_id
LEFT JOIN PerformerYears py ON p.performer_id = py.performer_id AND py.years_id = 2018
WHERE pg.genre = 'Pop'
ORDER BY p.performer_name;
