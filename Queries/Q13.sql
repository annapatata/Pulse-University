SELECT performer_name, COUNT(DISTINCT c.continent_id) AS num_continents
FROM Performer per
JOIN Performance p ON per.performer_id = p.performer_id
JOIN Event_P e ON e.event_id = p.event_id
JOIN Festival f ON f.festival_id = e.festival_id 
JOIN Location l ON l.festival_id = f.festival_id
JOIN Continent c ON c.continent_id = l.continent_id
GROUP BY performer_name
HAVING COUNT(DISTINCT c.continent_id) >=3
ORDER BY performer_name ASC;
