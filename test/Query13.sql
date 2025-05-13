-- CHECKED
SELECT performer_id, performer, COUNT(DISTINCT c.continent_id) AS num_continents
FROM PerformerPerformance p
JOIN Event_P e ON e.event_id = p.event
JOIN Festival f ON f.festival_id = e.festival_id 
JOIN Location l ON l.festival_id = f.festival_id
JOIN Continent c ON c.continent_id = l.continent_id
GROUP BY performer_id
HAVING COUNT(DISTINCT c.continent_id) >=3
ORDER BY num_continents DESC;
