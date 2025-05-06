-- VIEWS
CREATE VIEW PerformerGenre AS 
SELECT ps.performer_id AS performer_id, s.genre_id AS genre
FROM PerformerSubgenre ps 
JOIN Subgenre s ON s.subgenre_id = ps.subgenre_id;

CREATE VIEW EventStaff AS
SELECT e.festival_id AS Festival, e.festival_day AS Festival_day, s.role_id AS Role, s.xp AS xp
FROM 
	Event_P e
JOIN 
	Employment es ON e.event_id = es.event_id
JOIN 
	Staff s ON s.staff_id = es.staff_id;

CREATE VIEW PerformerPerformance AS
SELECT pf.performer_name AS Performer, pf.performer_id AS Performer_id, p.event_id AS Event, p.type_id AS Type 
FROM Performance p 
JOIN Performer pf ON pf.performer_id = p.performer_id;
