SELECT festival_id, average_xp AS avg_exp FROM (
SELECT festival_id, AVG(s.xp) AS average_xp
FROM Event_P e
JOIN Employment em ON em.event_id = e.event_id
JOIN Staff s ON s.staff_id = em.staff_id 
where s.role_id = 2
GROUP BY festival_id) AS avg_xp_per_festival
ORDER BY average_xp ASC
LIMIT 1;
