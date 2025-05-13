SELECT stage_name, participations
FROM Artist  
WHERE birthDate >= YEAR(CURDATE()) - 30
ORDER BY participations DESC;
