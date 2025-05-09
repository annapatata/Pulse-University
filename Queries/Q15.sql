-- CHECKED
SELECT v.first_name,v.last_name, performer_name, SUM(voice+overall) AS total_score
FROM Review r
JOIN Ticket t ON t.EAN = r.EAN
JOIN Visitor v ON v.visitor_id = t.visitor_id
JOIN Performance p ON p.performance_id = r.performance_id
JOIN Performer per ON per.performer_id = p.performer_id
GROUP BY v.first_name, v.last_name,performer_name
ORDER BY total_score DESC 
LIMIT 5;

-- VIEW
SELECT v.first_name,v.last_name, p.performer, SUM(voice+overall) AS total_score
FROM Review r
JOIN Ticket t ON t.EAN = r.EAN
JOIN Visitor v ON v.visitor_id = t.visitor_id
JOIN PerformerPerformance p ON r.performance_id = p.performance
GROUP BY v.first_name, v.last_name, p.performer
ORDER BY total_score DESC 
LIMIT 5;
