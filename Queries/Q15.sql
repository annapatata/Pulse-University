SELECT visitor_name, performer_name, SUM(voice+overall) AS total_score
FROM Review r
JOIN Ticket t ON t.EAN = r.EAN
JOIN Visitor v ON v.visitor_id = t.visitor_id
JOIN Performance p ON p.performance_id = r.performance_id
JOIN Performer per ON per.performer_id = p.performer_id
GROUP BY visitor_name,performer_name
ORDER BY total_score DESC 
LIMIT 5;
