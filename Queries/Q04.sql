SELECT p.performer AS performer, AVG(voice) as avg_voice , AVG(overall) as avg_overall 
FROM REVIEW r 
JOIN PerformerPerformance p ON p.performance = r.performance_id
WHERE p.performer='Taylor Swift';
