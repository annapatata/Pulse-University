SELECT festival_id, average_xp AS avg_exp FROM (
SELECT festival, AVG(xp) AS average_xp
FROM EventStaff
where Role = 2
GROUP BY festival) AS avg_xp_per_festival
ORDER BY average_xp ASC
LIMIT 1;
