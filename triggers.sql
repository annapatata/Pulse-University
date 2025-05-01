
-- prevent an artist from performing in two stages at once
DELIMITER //

CREATE TRIGGER check_double_perform
BEFORE INSERT ON Performance
FOR EACH ROW
BEGIN
    DECLARE cnt INT ;
    DECLARE solo BOOL;

    SELECT artist_nband INTO solo
    FROM Performer
    WHERE performer_id = NEW.performer_id;

	--if it s a solo performance
    IF solo THEN
		--find the new artist
		DECLARE artist VARCHAR(30);
		SELECT artist_id INTO artist
		FROM Performer 
		WHERE performer_id = NEW.performer_id
		--find all the artists that perfom (solo or with band) and check if the new artist has overlaps in time with himself
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

	--if it s a band performance
    ELSE
		SELECT COUNT(*) INTO cnt
		FROM (
			SELECT P.performer_id, p.start_time, p.end_time, perf.artist_nband, perf.artist_id, perf.band_id
			FROM Performance p JOIN Performer perf ON p.performer_id = perf.performer_id
		) AS double_perf --all the performances asociated with their performers
		JOIN BandMembers bm
		ON (
			(double_perf.artist_nband = TRUE AND bm.artist_id = double_perf.artist_id) --all the artists that perform and belong to a band 
			OR (double_perf.artist_nband = FALSE AND bm.artist_id = (
				SELECT artist_id FROM BandMembers WHERE band_id = double_perf.band_id
				)
			) --all the artists whose band performs
		) --all the performing artists
		WHERE bm.band_id = (SELECT band_if FROM Performer WHERE Performer_id = NEW.performer_id)
		AND (
		    (NEW.start_time BETWEEN double_perf.start_time AND double_perf.end_time) OR
            (NEW.end_time BETWEEN double_perf.start_time AND double_perf.end_time) OR
            (double_perf.start_time BETWEEN NEW.start_time AND NEW.end_time)
		);
    END IF;

    IF cnt > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'An artist cannot be at two places at once.';
    END IF;
END;
//
DELIMITER ;

-- update the id on the Performer table when a performer is added by name
DELIMITER //

CREATE TRIGGER update_ids
AFTER INSERT ON Performer FOR EACH ROW 
BEGIN 
	DECLARE id INT DEFAULT -1
	
	IF ( NEW.artist_nband = TRUE)
	THEN
		SELECT a.artist_id INTO id
		FROM Artist a 
		WHERE a.artist_name = NEW.performer_name
		
		IF ( id = -1 ) 
		THEN
			SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Artist isnt registered yet.';
		END IF;
		
		UPDATE Performer
			SET artist_id = id
		WHERE performer_id = NEW.performer_id
	END IF;
	
	ELSE 
		SELECT a.band_id INTO id
		FROM Band b 
		WHERE b.band_name = NEW.performer_name

		IF ( id = -1 ) 
		THEN
			SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Band isnt registered yet.';
		END IF;

		UPDATE Performer
			SET band_id = id
		WHERE performer_id = NEW.performer_id		
	END IF;
	
END;
//
DELIMITER ;
