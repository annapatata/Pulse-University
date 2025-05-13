-- CHECKED
SELECT festival_id, average_xp AS avg_exp FROM (
SELECT festival_id, AVG(s.xp) AS average_xp
FROM Event_P e
JOIN Employment em ON em.event_id = e.event_id
JOIN Staff s ON s.staff_id = em.staff_id 
where s.role_id = 2
GROUP BY festival_id) AS avg_xp_per_festival
ORDER BY average_xp ASC
LIMIT 1;


-- OLDER VERSION
--Find which festival has the lowest average of experience of technical staff

SELECT festival_id FROM (
SELECT festival_id,AVG(xp) AS average_xp
FROM Festival f
JOIN Event_P e ON e.festival_id = f.festival_id
JOIN Employment em ON em.event_id = e.event_id
JOIN Staff s ON s.staff_id = em.staff_id 
where s.role_name = 'Technical'
GROUP BY festival_id) AS avg_xp_per_festival
ORDER BY average_xp ASC
LIMIT 1;
--subquery to calculate avg(xp) for tecnhical staff per festival
