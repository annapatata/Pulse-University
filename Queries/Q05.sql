
SELECT a.stage_name
FROM Artist a 
WHERE TIMESTAMPDIFF(YEAR, a.birthDate, CURRENT_DATE) < 30
ORDER BY a.participations DESC; 
