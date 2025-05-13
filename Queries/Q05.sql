SELECT a.stage_name, a.participations
FROM Artist a 
WHERE TIMESTAMPDIFF(YEAR, a.birthDate, CURRENT_DATE) < 30
ORDER BY a.participations DESC; 
