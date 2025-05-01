SELECT stage_name, SUM(Performance_count) AS total_performances
FROM (
  SELECT a.stage_name, COUNT(*) AS Performance_count
  FROM Artist a 
  JOIN Performer perf ON perf.artist_id = a.artist_id
  JOIN Performance p ON perf.performer_id = p.performer_id
  WHERE TIMESTAMPDIFF(YEAR, a.birthDate, CURRENT_DATE) < 30
  GROUP BY a.stage_name

  UNION ALL 

  SELECT a.stage_name, COUNT(*) AS Performance_count
  FROM Artist a 
  JOIN BandMembers bm ON a.artist_id = bm.artist_id
  JOIN Performer perf ON perf.band_id = bm.band_id
  JOIN Performance p ON perf.performer_id = p.performer_id
  WHERE TIMESTAMPDIFF(YEAR, a.birthDate, CURRENT_DATE) < 30
  GROUP BY a.stage_name
) AS combined
GROUP BY stage_name
ORDER BY total_performances DESC;
