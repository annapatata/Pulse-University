-- CHECKED
SELECT performer_name,AVG(voice) as avg_voice , AVG(overall) as avg_overall 
FROM REVIEW r 
JOIN Performance p ON p.performance_id = r.performance_id
JOIN Performer per ON per.performer_id = p.performer_id
WHERE per.performer_name='Taylor Swift';

-- VIEW
SELECT performer_name, AVG(voice) as avg_voice , AVG(overall) as avg_overall 
FROM REVIEW r 
JOIN PerformerPerformance p ON p.performance_id = r.performance_id
WHERE p.performer='Taylor Swift';
