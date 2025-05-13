SELECT a.stage_name, a.participations
FROM Artist a force index (idx_artist_birthDate)
WHERE a.birthDate >= DATE_SUB(CURDATE(), INTERVAL 30 YEAR)
ORDER BY a.participations DESC;
