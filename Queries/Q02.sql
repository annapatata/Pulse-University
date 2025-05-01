SELECT p.performer_name, 
	IF(py.year IS NOT NULL, 'YES', 'NO') AS Participated
FROM Performer p 
JOIN PerformerSubgenre ps ON p.performer_id = ps.performer_id
JOIN Subgenre s ON ps.subgenre_id = s.subgenre_id
LEFT JOIN PerformerYear py ON p.performer_id = py.performer_id AND py.year_id = 2025
WHERE s.genre = 'Rock';
