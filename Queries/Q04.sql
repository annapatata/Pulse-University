--For an artist/band, find the average of voice and overall reviews

SELECT performer_name,AVG(voice) as avg_voice , AVG(overall) as avg_overall 
FROM REVIEW r
JOIN Ticket t ON r.EAN = t.EAN 
JOIN Performance p ON p.event_id = t.event_id
JOIN Performer per ON per.performer_id = p.performer_id
WHERE per.performer_name='Sabrina Carpenter'



