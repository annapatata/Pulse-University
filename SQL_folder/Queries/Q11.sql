SELECT stage_name,participations
FROM Artist
WHERE participations <= (
	SELECT MAX(participations) FROM Artist ) - 5
ORDER BY participations;
