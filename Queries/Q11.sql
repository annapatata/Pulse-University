-- CHECKED

SELECT artist_id, stage_name, participations
FROM Artist
WHERE participations < (
	SELECT MAX(participations) FROM Artist ) - 5;
