--Find the performers that have participated in 3 different continents
--CHECKED
SELECT performer_name 
FROM Performer per
JOIN Performance p ON per.performer_id = p.performer_id
JOIN Event_P e ON e.event_id = p.event_id
JOIN Festival f ON f.festival_id = e.festival_id 
JOIN Location l ON l.festival_id = f.festival_id
JOIN Continent c ON c.continent_id = l.continent_id
GROUP BY performer_name
HAVING COUNT(DISTINCT continent_name) >=3
ORDER BY performer_name ASC;



