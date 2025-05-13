SELECT v.visitor_id, v.first_name,v.last_name, p.performer, SUM(voice+overall) AS total_score
FROM Review r
JOIN Ticket t ON t.EAN = r.EAN
JOIN Visitor v ON v.visitor_id = t.visitor_id
JOIN PerformerPerformance p ON r.performance_id = p.performance
GROUP BY v.visitor_id, p.performer_id
ORDER BY total_score DESC 
LIMIT 5;
