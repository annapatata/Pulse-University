
SELECT *
FROM Artist
WHERE participations < (
	SELECT MAX(participations) FROM Artist ) - 5;
