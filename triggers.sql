DROP TRIGGER IF EXISTS performer_before_insert;
DELIMITER //
CREATE TRIGGER performer_before_insert
BEFORE INSERT ON Performer FOR EACH ROW
BEGIN
  	IF (NEW.artist_nband = 1 AND (NEW.artist_id IS NULL OR NEW.band_id IS NOT NULL)) OR
     	(NEW.artist_nband = 0 AND (NEW.band_id IS NULL OR NEW.artist_id IS NOT NULL)) 
  	THEN
    		SIGNAL SQLSTATE '45000' 
    		SET MESSAGE_TEXT = 'Invalid performer: must have either artist_id or band_id depending on artist_nband';
	END IF;
END//
DELIMITER ;

DROP TRIGGER IF EXISTS performance_in_event;
DELIMITER $$	
CREATE TRIGGER performance_in_event
BEFORE INSERT ON Performance
FOR EACH ROW
BEGIN
 	DECLARE start_event DATETIME;
	DECLARE end_event DATETIME;

	SELECT start_time, end_time
	INTO start_event, end_event
	FROM Event_P
	WHERE event_id=NEW.event_id;

	IF (NEW.start_time < start_event OR NEW.end_time > end_event) THEN
        	SIGNAL SQLSTATE '45000'
        	SET MESSAGE_TEXT = "Performance start time or end time is out of bounds for the event.";
    	END IF;
END$$
DELIMITER ;


DROP TRIGGER IF EXISTS check_stage_overlap;
DELIMITER $$
CREATE TRIGGER check_stage_overlap
BEFORE INSERT ON Event_P
FOR EACH ROW
BEGIN
    DECLARE overlap_count INT;

    SELECT COUNT(*) INTO overlap_count
    FROM Event_P
    WHERE stage_id = NEW.stage_id
    AND NOT (NEW.end_time <= start_time OR NEW.start_time>=end_time);

    IF overlap_count > 0 THEN
    	SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "Stage is used at that time";
    END IF;
END$$
DELIMITER ;


DROP TRIGGER IF EXISTS check_sec_aux_staff;
DELIMITER $$ 
CREATE TRIGGER check_sec_aux_staff
BEFORE INSERT ON Performance
FOR EACH ROW
BEGIN
    DECLARE sec_staff_count INT;
    DECLARE event_capacity INT;
    DECLARE help_staff_count INT;

    SELECT s.capacity INTO event_capacity
    FROM Event_P e 
    JOIN Stage s ON e.stage_id = s.stage_id
    WHERE event_id = NEW.event_id;
    
    SELECT COUNT(*) INTO sec_staff_count
    FROM Employment e JOIN Staff s ON e.staff_id=s.staff_id
    WHERE  s.role_id=3  AND e.event_id = NEW.event_id;
    IF sec_staff_count < 0.05*event_capacity THEN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Too few security staff in this event';
    END IF;
    

    SELECT COUNT(*) INTO help_staff_count
    FROM Employment e JOIN Staff s ON e.staff_id = s.staff_id
    WHERE s.role_id=1 AND e.event_id = NEW.event_id;

    IF help_staff_count < 0.02*event_capacity THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Too few help staff in this event';
    END IF;
  
END$$
DELIMITER ;


DROP TRIGGER IF EXISTS staff_overlap;
DELIMITER $$ 
CREATE TRIGGER staff_overlap
BEFORE INSERT ON Employment
FOR EACH ROW
BEGIN
    DECLARE count_staff INT;

    SELECT COUNT(*) INTO count_staff
    FROM Employment em
    JOIN Event_P ev ON em.event_id = ev.event_id
    JOIN Event_P ev2 ON NEW.event_id = ev2.event_id
    WHERE staff_id = NEW.staff_id 
    AND DATE(ev.start_time) = DATE(ev2.start_time);

    IF (count_staff>1) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Overlapping Staff';
    END IF;
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS break;
DELIMITER $$ 
CREATE TRIGGER break
BEFORE INSERT ON Performance
FOR EACH ROW
BEGIN 
    DECLARE prev_end TIME;
    DECLARE next_start TIME;

    SELECT MAX(end_time) INTO prev_end
    FROM Performance
    WHERE end_time <= NEW.start_time AND event_id = NEW.event_id;

    SELECT MIN(start_time) INTO next_start
    FROM Performance
    WHERE start_time >=NEW.end_time AND event_id = NEW.event_id;

    IF prev_end IS NOT NULL THEN
        IF TIMESTAMPDIFF(MINUTE,NEW.end_time,next_start) NOT BETWEEN 5 AND 30 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'There must be a break between performances of at least 5 and at most 30 minutes';
        END IF;
    END IF;

    IF next_start IS NOT NULL THEN
        IF TIMESTAMPDIFF(MINUTE,NEW.start_time,prev_end) NOT BETWEEN 5 AND 30 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'There must be a break between performances of at least 5 and at most 30 minutes';
        END IF;
    END IF;

END$$
DELIMITER ;


DROP TRIGGER IF EXISTS check_ticket_count;
DELIMITER $$ 
CREATE TRIGGER check_ticket_count
BEFORE INSERT ON Ticket
FOR EACH ROW
BEGIN 
    DECLARE ticket_count INT;
    DECLARE cap INT;

    SELECT COUNT(*) INTO ticket_count
    FROM Ticket t
    WHERE t.event_id=NEW.event_id;

    SELECT capacity INTO cap
    FROM Stage s JOIN Event_P e ON s.stage_id = e.stage_id
    WHERE event_id = NEW.event_id;

    IF (ticket_count + 1 > cap) THEN 
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Tickets are sold out';
    END IF;
END$$
DELIMITER ;



DROP TRIGGER IF EXISTS check_vip_tickets;
DELIMITER $$ 
CREATE TRIGGER check_vip_tickets
BEFORE INSERT ON Ticket
FOR EACH ROW
BEGIN
	DECLARE vip_count INT;
        DECLARE event_capacity INT;
	IF New.ticket_type = 'VIP' THEN 
	    SELECT COUNT(*) INTO vip_count
	    FROM Ticket t 
	    WHERE event_id = NEW.event_id AND ticket_type = 'VIP';
	
	    SELECT capacity INTO event_capacity
	    FROM Stage s JOIN Event_P e ON s.stage_id = e.stage_id
	    WHERE event_id = NEW.event_id;
	
	    IF (vip_count + 1) > 0.1*event_capacity  THEN
	        SIGNAL SQLSTATE '45000'
	        SET MESSAGE_TEXT = 'VIP section is sold out';
	    END IF;
	END IF;   
END$$
DELIMITER ;


DROP TRIGGER IF EXISTS check_activated_review;
DELIMITER $$ 
CREATE TRIGGER check_activated_review
BEFORE INSERT ON Review
FOR EACH ROW
BEGIN
    DECLARE active BOOL;

    SELECT activated INTO active 
    FROM Ticket 
    WHERE EAN = NEW.EAN;

    IF active=FALSE THEN 
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Non-activated tickets are not eligible for reviews';
    END IF;
END$$
DELIMITER ;


DROP TRIGGER IF EXISTS delete_future_performances;
DELIMITER //
CREATE TRIGGER delete_future_performances
BEFORE DELETE ON Performer
FOR EACH ROW
BEGIN
    DECLARE cnt INT;

    SELECT COUNT(*) INTO cnt FROM Performance
    WHERE performer_id = OLD.performer_id
    AND start_time > CURRENT_TIME;

    IF cnt>0 THEN 
    SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "Cannot delete performer scheduled to perform";
    END IF;
END//
DELIMITER ;


-- prevent an artist from performing in two stages at once
DROP TRIGGER IF EXISTS check_double_perform;
DELIMITER //
CREATE TRIGGER check_double_perform
BEFORE INSERT ON Performance
FOR EACH ROW
BEGIN
    DECLARE cnt INT ;
    DECLARE solo TINYINT;
    DECLARE artist VARCHAR(30);

    SELECT artist_nband INTO solo
    FROM Performer
    WHERE performer_id = NEW.performer_id;

	-- if it s a solo performance
    IF solo THEN
		-- find the new artist
		SELECT artist_id INTO artist
		FROM Performer 
		WHERE performer_id = NEW.performer_id;
		-- find all the artists that perfom (solo or with band) and check if the new artist has overlaps in time with himself
        SELECT COUNT(*) INTO cnt
        FROM Performance p
        JOIN Performer perf ON p.performer_id = perf.performer_id
        LEFT JOIN BandMembers bm ON perf.artist_nband = FALSE AND perf.band_id = bm.band_id
        WHERE (
            (perf.artist_nband = TRUE AND perf.artist_id = artist)
            OR
            (perf.artist_nband = FALSE AND bm.artist_id = artist)
        )
        AND (
            (NEW.start_time BETWEEN p.start_time AND p.end_time) OR
            (NEW.end_time BETWEEN p.start_time AND p.end_time) OR
            (p.start_time BETWEEN NEW.start_time AND NEW.end_time)
        );

	-- if it s a band performance
    ELSE
    SELECT COUNT(*) INTO cnt
    FROM Performance p
    JOIN Performer perf ON p.performer_id = perf.performer_id
    JOIN BandMembers bm ON (
	(perf.artist_nband = TRUE AND perf.artist_id = bm.artist_id)
        OR (perf.artist_nband = FALSE AND perf.band_id = bm.band_id)
        )
    WHERE bm.band_id = (SELECT band_id FROM Performer WHERE performer_id = NEW.performer_id)
    AND (
        (NEW.start_time BETWEEN p.start_time AND p.end_time) OR
        (NEW.end_time BETWEEN p.start_time AND p.end_time) OR
        (p.start_time BETWEEN NEW.start_time AND NEW.end_time)
    );
    END IF;

    IF cnt > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'An artist cannot be at two places at once.';
    END IF;
END//
DELIMITER ;




-- update the id on the Performer table when a performer is added by name
DROP TRIGGER IF EXISTS update_ids;
DELIMITER //
CREATE TRIGGER update_ids
AFTER INSERT ON Performer FOR EACH ROW 
BEGIN 
	DECLARE id INT DEFAULT -1;
	
    IF (NEW.performer_id = NULL)
    THEN
		IF ( NEW.artist_nband = TRUE)
		THEN
			SELECT a.artist_id INTO id
			FROM Artist a 
			WHERE a.artist_name = NEW.performer_name;
		
			IF ( id = -1 ) 
			THEN
				SIGNAL SQLSTATE '45000'
				SET MESSAGE_TEXT = 'Artist isnt registered yet.';
			END IF;
		
			UPDATE Performer
				SET artist_id = id
			WHERE performer_id = NEW.performer_id;
	
		ELSE 
			SELECT b.band_id INTO id
			FROM Band b 
			WHERE b.band_name = NEW.performer_name;

			IF ( id = -1 ) 
			THEN
				SIGNAL SQLSTATE '45000'
				SET MESSAGE_TEXT = 'Band isnt registered yet.';
			END IF;

			UPDATE Performer
				SET band_id = id
			WHERE performer_id = NEW.performer_id;	
		END IF;
	END IF;
END//
DELIMITER ;


DROP TRIGGER IF EXISTS check_consecutive_years;
DELIMITER //
CREATE TRIGGER check_consecutive_years
BEFORE INSERT ON Performance FOR EACH ROW
BEGIN
	DECLARE this_year YEAR;
	DECLARE cnt INT;
	
	SELECT f.festival_id INTO this_year
	FROM Event_P e
	JOIN Festival f ON e.festival_id = f.festival_id
	WHERE e.event_id = NEW.event_id;
	
    SELECT COUNT(DISTINCT py.years_id) INTO cnt
    FROM PerformerYears py
    WHERE py.performer_id = NEW.performer_id
      AND py.years_id BETWEEN this_year - 3 AND this_year;
	
	IF cnt = 3 
	THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Performer cannot perform three years in a row.';
	END IF;

    SELECT COUNT(DISTINCT py.years_id) INTO cnt
    FROM PerformerYears py
    WHERE py.performer_id = NEW.performer_id
      AND py.years_id BETWEEN this_year - 2 AND this_year + 1;
	
	IF cnt = 3 
	THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Performer cannot perform three years in a row.';
	END IF;
	
    SELECT COUNT(DISTINCT py.years_id) INTO cnt
    FROM PerformerYears py
    WHERE py.performer_id = NEW.performer_id
      AND py.years_id BETWEEN this_year - 1 AND this_year + 2;
	
	IF cnt = 3 
	THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Performer cannot perform three years in a row.';
	END IF;
	
    SELECT COUNT(DISTINCT py.years_id) INTO cnt
    FROM PerformerYears py
    WHERE py.performer_id = NEW.performer_id
      AND py.years_id BETWEEN this_year AND this_year + 3;
	
	IF cnt = 3 
	THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Performer cannot perform three years in a row.';
	END IF;
END//
DELIMITER ;


DROP TRIGGER IF EXISTS update_years;
DELIMITER //
CREATE TRIGGER update_years
AFTER INSERT ON Festival FOR EACH ROW 
BEGIN
	INSERT INTO Years (years_id) VALUES (NEW.festival_id);
END//
DELIMITER ;


DROP TRIGGER IF EXISTS update_perf_years;
DELIMITER //
CREATE TRIGGER update_perf_years
AFTER INSERT ON Performance FOR EACH ROW 
BEGIN 
	DECLARE this_year YEAR;
	
	SELECT f.festival_id INTO this_year
	FROM Event_P e
	JOIN Festival f ON e.festival_id = f.festival_id
	WHERE e.event_id = NEW.event_id;
	
	INSERT INTO PerformerYears (performer_id, years_id) VALUES (NEW.performer_id, this_year);
END//
DELIMITER ;


DROP TRIGGER IF EXISTS update_part;
DELIMITER //
CREATE TRIGGER update_part
AFTER INSERT ON Performance FOR EACH ROW
BEGIN
	DECLARE solo BOOL;
	DECLARE id INT;

	SELECT artist_nband INTO solo
	FROM Performer 
	WHERE performer_id = NEW.performer_id;
	
	IF ( solo = TRUE )
	THEN 
		SELECT artist_id INTO id
		FROM performer 
		WHERE performer_id = NEW.performer_id;
		
		UPDATE Artist 
		SET participations = participations + 1
		WHERE artist_id = id;
	
	ELSE
		SELECT band_id INTO id 
		FROM Performer 
		WHERE performer_id = NEW.performer_id;
		
		UPDATE Artist a
		JOIN BandMembers bm ON a.artist_id = bm.artist_id 
		SET a.participations = a.participations + 1
		WHERE bm.band_id = id;
	END IF;
END//
DELIMITER ;


DROP TRIGGER IF EXISTS check_event_sold_out;
DELIMITER $$
CREATE TRIGGER check_event_sold_out
BEFORE INSERT ON Resale_queue
FOR EACH ROW
BEGIN
	DECLARE r_event_id INT;
	DECLARE num_sold INT;
	DECLARE r_event_capacity INT;
	DECLARE r_status BOOL;
	DECLARE r_stage INT;
	DECLARE r_time DATETIME;
    
	SELECT event_id, activated INTO r_event_id, r_status
	FROM Ticket
	WHERE EAN = NEW.EAN;
	
	SELECT COUNT(*) INTO num_sold
	FROM Ticket
	WHERE event_id = r_event_id;
	
	SELECT start_time, stage_id INTO r_time, r_stage
	FROM Event_P 
	WHERE event_id = r_event_id;

	SELECT capacity INTO  r_event_capacity
	FROM Stage
	WHERE stage_id = r_stage;
      
	IF num_sold < r_event_capacity 
	   OR r_status = TRUE
	   OR r_time < NOW() THEN
	   SIGNAL SQLSTATE '45000'
	   SET MESSAGE_TEXT = 'Ticket cannot be resold.';
	END IF;
END$$
DELIMITER ;


DROP TRIGGER IF EXISTS remove_from_resale_if_activated;
DELIMITER $$
CREATE TRIGGER remove_from_resale_if_activated
AFTER UPDATE ON Ticket
FOR EACH ROW
BEGIN
    IF NEW.activated = TRUE THEN
        DELETE FROM Resale_queue
        WHERE EAN = NEW.EAN;
    END IF;
END$$
DELIMITER ;


DROP TRIGGER IF EXISTS match_on_resale;
DELIMITER $$
CREATE TRIGGER match_on_resale
AFTER INSERT ON Resale_queue
FOR EACH ROW
BEGIN
	DECLARE cur_b_id INT;
	DECLARE cur_v_id INT;
	DECLARE resale_type VARCHAR(10);
	DECLARE resale_event INT;
	DECLARE r_time DATETIME;
	
	SELECT event_id, ticket_type INTO resale_event, resale_type
	FROM Ticket
	WHERE EAN = NEW.EAN;
	
	SELECT start_time INTO r_time
	FROM Event_P
	WHERE event_id = resale_event;
	
	SELECT buyer_id, visitor_id INTO cur_b_id, cur_v_id
	FROM Buyer
	WHERE ((EAN = NEW.EAN) OR (ticket_type = resale_type AND event_id = resale_event))
	ORDER BY purchase_interest ASC
	LIMIT 1;
	
	IF cur_b_id IS NOT NULL AND r_time > NOW() THEN
		UPDATE Ticket SET visitor_id = cur_v_id WHERE EAN = NEW.EAN;
		DELETE FROM Resale_queue WHERE EAN = NEW.EAN;
	END IF;
	
	IF r_time < NOW() THEN 
		DELETE FROM Resale_queue WHERE EAN = NEW.EAN;
		DELETE FROM Buyer WHERE event_id = resale_event;
	END IF;
		
	END$$
DELIMITER ;


DROP TRIGGER IF EXISTS match_on_buyer;
DELIMITER $$
CREATE TRIGGER match_on_buyer
AFTER INSERT ON Buyer
FOR EACH ROW
BEGIN
	DECLARE d_time DATETIME;
	DECLARE d_event INT;
	DECLARE d_EAN VARCHAR(13);
	
	
	IF NEW.EAN IS NOT NULL THEN	
		SELECT event_id INTO d_event FROM Ticket WHERE EAN = NEW.EAN;
		SELECT start_time INTO d_time FROM Event_P WHERE event_id = d_event;
		IF d_time > NOW() THEN
		    UPDATE Ticket SET visitor_id = NEW.visitor_id WHERE EAN = NEW.EAN;
		END IF;
		IF d_time < NOW() THEN
			DELETE FROM Buyer WHERE event_id = d_event;
			DELETE FROM Resale_queue WHERE EAN IN (
				SELECT EAN FROM Ticket WHERE event_id = d_event
			);
		END IF;
		DELETE FROM Resale_queue WHERE EAN = NEW.EAN;

	
	ELSE
		SELECT start_time INTO d_time FROM Event_P WHERE event_id = NEW.event_id;
		
		IF d_time < NOW() THEN
			DELETE FROM Buyer WHERE event_id = NEW.event_id;
			DELETE FROM Resale_queue WHERE EAN IN (
				SELECT EAN FROM Ticket WHERE event_id = NEW.event_id
			);
		END IF;
		
	    SELECT rq.EAN INTO d_EAN
		FROM Resale_queue rq
		JOIN Ticket t ON rq.EAN = t.EAN 
		WHERE t.event_id = NEW.event_id
			AND t.ticket_type = NEW.ticket_type 
		ORDER BY rq.sale_interest ASC
		LIMIT 1;
		
		IF d_EAN IS NOT NULL THEN
			UPDATE Ticket  SET visitor_id = NEW.visitor_id WHERE EAN = d_EAN;
			DELETE FROM Resale_queue WHERE EAN = d_EAN;
		END IF;
	END IF;
	
	END$$
DELIMITER ;


DROP TRIGGER IF EXISTS review_attended_performance;
DELIMITER $$
CREATE TRIGGER review_attended_performance
AFTER INSERT ON Review
FOR EACH ROW
BEGIN
	DECLARE event_ticket INT;
	DECLARE event_perf INT;

	SELECT event_id INTO event_ticket
	FROM Ticket t
	WHERE NEW.EAN = t.EAN;

	SELECT event_id INTO event_perf
	FROM Performance p
	WHERE p.performance_id= NEW.performance_id;

	IF event_perf != event_ticket THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Performance does not match ticket';
	END IF;

END $$
DELIMITER ;
	



