-- ------------------------------------------------------------------------------------------------------------------
-- SCHEMA 
-- ------------------------------------------------------------------------------------------------------------------


DROP SCHEMA if exists `pulse_music_festival`;
CREATE SCHEMA `pulse_music_festival`;
use pulse_music_festival;

CREATE TABLE Festival (
  festival_id YEAR PRIMARY KEY,
  start_day DATE NOT NULL,
  end_day date NOT NULL,
  duration integer,
  image varchar(100) not null check (image like 'https://%'),
  image_caption varchar(100) not null
);

CREATE TABLE Continent (
  continent_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  continent_name varchar(20) UNIQUE,
  image varchar(100) not null check (image like 'https://%'),
  image_caption varchar(100) not null
);

CREATE TABLE Location (
  loc_id integer PRIMARY KEY,
  festival_id YEAR NOT NULL,
  coor_long float NOT NULL,
  coor_lat float NOT NULL,
  address varchar(40) NOT NULL,
  city varchar(40) NOT NULL,
  country varchar(40) NOT NULL,
  continent_id INT NOT NULL,
  image varchar(100) not null check (image like 'https://%'),
  image_caption varchar(100) not null,
  FOREIGN KEY (festival_id) REFERENCES Festival(festival_id)
  ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (continent_id) REFERENCES Continent(continent_id)
);

CREATE TABLE Description (
  desc_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  descript varchar(40) NOT NULL UNIQUE,
  image varchar(100) not null check (image like 'https://%'),
  image_caption varchar(100) not null
);

CREATE TABLE Stage (
  stage_id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  stage_name varchar(20) NOT NULL,  
  desc_id int NOT NULL,
  capacity INT NOT NULL,
  image varchar(100) not null check (image like 'https://%'),
  image_caption varchar(100) not null,
  FOREIGN KEY (desc_id) REFERENCES Description(desc_id)
  ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Role(
  role_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  role_name varchar(20) NOT NULL,
  image varchar(100) not null check (image like 'https://%'),
  image_caption varchar(100) not null
);

CREATE TABLE Experience (
  experience_level varchar(20) UNIQUE, 
  xp INT AUTO_INCREMENT PRIMARY KEY,
  image varchar(100) not null check (image like 'https://%'),
  image_caption varchar(100) not null
);


CREATE TABLE Staff (
  staff_id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  first_name varchar(20) NOT NULL,
  last_name varchar(30) NOT NULL,
  age integer NOT NULL,
  xp INT NOT NULL,
  role_id INT NOT NULL,
  image varchar(100) not null check (image like 'https://%'),
  image_caption varchar(100) not null,
  FOREIGN KEY (role_id) REFERENCES Role(role_id)
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (xp) REFERENCES Experience(xp)
  ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE Equipment (
  equip_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  equip_name varchar(50) NOT NULL UNIQUE,
  image varchar(100) NOT NULL CHECK (image like 'https://%'),
  image_caption varchar(100) NOT NULL
);


CREATE TABLE Event_P (
  event_id integer PRIMARY KEY NOT NULL ,
  festival_id YEAR NOT NULL,
  stage_id INT NOT NULL,
  start_time DATETIME NOT NULL,
  end_time DATETIME NOT NULL, 
  festival_day INT NOT NULL,
  image varchar(100) not null check (image like 'https://%'),
  image_caption varchar(100) not null,
  FOREIGN KEY (festival_id) REFERENCES Festival(festival_id)
  ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (stage_id) REFERENCES Stage(stage_id)
  ON DELETE RESTRICT ON UPDATE CASCADE
);


CREATE TABLE EventEquip (
  equip_id int NOT NULL,
  event_id integer NOT NULL,
  quantity int,
  FOREIGN KEY (equip_id) REFERENCES Equipment(equip_id)
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (event_id) REFERENCES Event_P(event_id)
  ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Employment (
  contract_id int PRIMARY KEY NOT NULL,
  staff_id int NOT NULL,
  event_id int NOT NULL,
  FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
  ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (event_id) REFERENCES Event_P(event_id)
  ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Artist (
  artist_id INT PRIMARY KEY NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  stage_name VARCHAR(30) NOT NULL,
  birthdate DATE NOT NULL,
  website VARCHAR(30),
  insta VARCHAR(30),
  participations INT NOT NULL DEFAULT 0,
  image varchar(100) not null check (image like 'https://%'),
  image_caption varchar(100) not null
);

CREATE TABLE Band (
  band_id INT PRIMARY KEY NOT NULL,
  band_name VARCHAR(30) NOT NULL,
  form_date DATE NOT NULL,
  website VARCHAR(30),
  insta VARCHAR(30),
  image varchar(100) not null check (image like 'https://%'),
  image_caption varchar(100) not null
);

CREATE TABLE BandMembers (
  band_id INT,
  artist_id INT,
  joined_in DATE,
  FOREIGN KEY (band_id) REFERENCES Band(band_id)
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
  ON DELETE CASCADE ON UPDATE CASCADE 
);

CREATE TABLE Genre (
  genre_id VARCHAR(20) PRIMARY KEY NOT NULL,
  image varchar(100) not null check (image like 'https://%'),
  image_caption varchar(100) not null
);

CREATE TABLE Subgenre (
  subgenre_id VARCHAR(40) PRIMARY KEY,
  genre_id VARCHAR(20),
  image varchar(100) not null check (image like 'https://%'),
  image_caption varchar(100) not null,
  FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
  ON DELETE CASCADE ON UPDATE RESTRICT
);

CREATE TABLE Performer (
  performer_id INT PRIMARY KEY NOT NULL,
  performer_name varchar(30) NOT NULL, 
  artist_nband tinyint NOT NULL,
  artist_id INT UNIQUE,
  band_id INT UNIQUE,
  FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
  ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (band_id) REFERENCES Band(band_id)
  ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE PerformerSubgenre (
  performer_id INT,
  subgenre_id VARCHAR(40),
  FOREIGN KEY (performer_id) REFERENCES Performer(performer_id)
  ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (subgenre_id) REFERENCES Subgenre(subgenre_id)
  ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Years (
	years_id YEAR PRIMARY KEY NOT NULL
);

CREATE TABLE PerformerYears (
	performer_id INT NOT NULL,
	years_id YEAR NOT NULL,
	FOREIGN KEY (performer_id) REFERENCES Performer(performer_id)
	ON DELETE CASCADE ON UPDATE RESTRICT,
	FOREIGN KEY (years_id) REFERENCES Years(years_id)
	ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE PerformanceTypes (
	type_id VARCHAR(30) PRIMARY KEY
);

CREATE TABLE Performance(
  performance_id int PRIMARY KEY NOT NULL,
  performer_id int NOT NULL,
  event_id int NOT NULL,
  type_id varchar(40) NOT NULL,
  start_time datetime NOT NULL,
  end_time datetime NOT NULL,
  duration int GENERATED ALWAYS AS (TIMESTAMPDIFF(MINUTE,start_time,end_time)) STORED
  CHECK (duration <=180),
  image varchar(100) not null check (image like 'https://%'),
  image_caption varchar(100) not null,
  FOREIGN KEY (performer_id) REFERENCES Performer(performer_id)
  ON UPDATE CASCADE ON DELETE RESTRICT,
  FOREIGN KEY (event_id) REFERENCES Event_P(event_id)
  ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (type_id) REFERENCES PerformanceTypes(type_id)
  ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Visitor (
   visitor_id INT AUTO_INCREMENT PRIMARY KEY,
   first_name VARCHAR(20) NOT NULL,
   last_name VARCHAR(30) NOT NULL,
   age INT NOT NULL,
   phone VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Ticket_Class (
	ticket_type VARCHAR(10) PRIMARY KEY
);

CREATE TABLE PayedWith (
	pay_method VARCHAR(10) PRIMARY KEY
);

CREATE TABLE Ticket (
   event_id INT NOT NULL,
   price DECIMAL(10,2) NOT NULL ,
   visitor_id INT NOT NULL,
   ticket_type VARCHAR(10) NOT NULL,
   pay_method VARCHAR(10) NOT NULL,
   purchase_date TIMESTAMP NOT NULL,
   EAN VARCHAR(13) PRIMARY KEY CHECK (EAN REGEXP '^[0-9]{13}$'),
   activated TINYINT NOT NULL DEFAULT FALSE,
   image varchar(100) not null check (image like 'https://%'),
   image_caption varchar(100) not null,
   FOREIGN KEY (event_id) REFERENCES Event_P(event_id),
   FOREIGN KEY (visitor_id) REFERENCES Visitor(visitor_id), 
   FOREIGN KEY (ticket_type) REFERENCES Ticket_Class(ticket_type), 
   FOREIGN KEY (pay_method) REFERENCES PayedWith(pay_method)   
);


CREATE TABLE Resale_queue (
	EAN VARCHAR(13) PRIMARY KEY,
	sale_interest TIMESTAMP NOT NULL,
	sold TINYINT DEFAULT FALSE NOT NULL,
	FOREIGN KEY (EAN) REFERENCES Ticket(EAN)
);

CREATE TABLE Buyer (
   buyer_id INT AUTO_INCREMENT PRIMARY KEY,
   visitor_id INT NOT NULL,
   ticket_type VARCHAR(10),
   EAN VARCHAR(13),
   event_id INT,
   purchase_interest TIMESTAMP NOT NULL,
   satisfied TINYINT DEFAULT FALSE NOT NULL,
   CHECK (
	(EAN IS NOT NULL AND event_id IS NULL AND ticket_type IS NULL) OR
	(EAN IS NULL AND event_id IS NOT NULL AND ticket_type IS NOT NULL) 
   ),
   FOREIGN KEY (EAN) REFERENCES Resale_queue(EAN) ON DELETE CASCADE,
   FOREIGN KEY (visitor_id) REFERENCES Visitor(visitor_id),
   FOREIGN KEY (event_id) REFERENCES Event_P(event_id),
   FOREIGN KEY (ticket_type) REFERENCES Ticket_Class(ticket_type)
);

CREATE TABLE Likert (
   scale INT PRIMARY KEY CHECK(scale > 0 AND scale < 6)
 );

CREATE TABLE Review (
   EAN VARCHAR(13) NOT NULL,
   performance_id int NOT NULL,
   PRIMARY KEY(EAN,performance_id),
   voice INT NOT NULL,
   light_sound INT NOT NULL ,
   stage_presence INT NOT NULL,
   organisation INT NOT NULL,
   overall  INT NOT NULL,
   FOREIGN KEY (EAN) REFERENCES Ticket(EAN),
   FOREIGN KEY (voice) REFERENCES Likert(scale),
   FOREIGN KEY (light_sound) REFERENCES Likert(scale),
   FOREIGN KEY (stage_presence) REFERENCES Likert(scale),
   FOREIGN KEY (organisation) REFERENCES Likert(scale),
   FOREIGN KEY (overall) REFERENCES Likert(scale),
   FOREIGN KEY (performance_id) REFERENCES Performance(performance_id)
);

	
	
-- ------------------------------------------------------------------------------------------------------------------
-- INDICES
-- ------------------------------------------------------------------------------------------------------------------


-- Artist indexes
CREATE INDEX idx_artist_participations ON Artist(participations); -- q05/q11
CREATE INDEX idx_artist_birthDate ON Artist(birthDate); -- q05

-- Performer indexes
CREATE INDEX idx_performer_name  ON Performer(performer_name); -- used in q04 for optimization

-- Performance indexes
CREATE INDEX idx_performance_start_end_time ON Performance(start_time, end_time); -- used in triggers

-- Ticket indexes
CREATE INDEX idx_ticket_opt ON Ticket(visitor_id, activated, event_id); -- q06 optimization



-- ------------------------------------------------------------------------------------------------------------------
-- TRIGGERS
-- ------------------------------------------------------------------------------------------------------------------

DROP TRIGGER IF EXISTS artist_or_band;
DELIMITER //
CREATE TRIGGER artist_or_band
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


DROP TRIGGER IF EXISTS delete_performances;
DELIMITER //
CREATE TRIGGER delete_performances
BEFORE DELETE ON Performance
FOR EACH ROW
BEGIN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Cannot delete performer scheduled to perform';
END//
DELIMITER ;


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


DROP TRIGGER IF EXISTS update_ids;
DELIMITER //
CREATE TRIGGER update_ids
AFTER INSERT ON Performer FOR EACH ROW 
BEGIN 
	DECLARE id INT DEFAULT -1;
	
    IF (NEW.performer_id IS NULL)
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
BEFORE INSERT ON Resale_queue
FOR EACH ROW
BEGIN
	DECLARE cur_b_id INT;
	DECLARE cur_v_id INT;
	DECLARE resale_type VARCHAR(10);
	DECLARE resale_event INT;
	DECLARE r_time DATETIME;
	DECLARE valid TINYINT;
	
	SELECT event_id, ticket_type INTO resale_event, resale_type
	FROM Ticket
	WHERE EAN = NEW.EAN;
	
	SELECT start_time INTO r_time
	FROM Event_P
	WHERE event_id = resale_event;
	
	SELECT buyer_id, visitor_id INTO cur_b_id, cur_v_id 
	FROM Buyer
	WHERE ((EAN = NEW.EAN) OR (ticket_type = resale_type AND event_id = resale_event)) AND satisfied = FALSE
	ORDER BY purchase_interest ASC
	LIMIT 1;
	
	IF cur_b_id IS NOT NULL AND r_time > NOW() THEN
		UPDATE Ticket SET visitor_id = cur_v_id WHERE EAN = NEW.EAN;
        SET NEW.sold = TRUE;
        UPDATE Buyer SET satisfied = TRUE WHERE (visitor_id = cur_v_id AND event_id = resale_event) OR (EAN = NEW.EAN);
	END IF;	
END$$
DELIMITER ;


DROP TRIGGER IF EXISTS match_on_buyer;
DELIMITER $$
CREATE TRIGGER match_on_buyer
BEFORE INSERT ON Buyer
FOR EACH ROW
BEGIN
	DECLARE d_time DATETIME;
	DECLARE d_event INT;
	DECLARE d_EAN VARCHAR(13);
	DECLARE valid TINYINT;
    
	IF NEW.EAN IS NOT NULL THEN	
		SELECT event_id INTO d_event FROM Ticket WHERE EAN = NEW.EAN;
		SELECT start_time INTO d_time FROM Event_P WHERE event_id = d_event;
        SELECT sold INTO valid FROM Resale_queue WHERE EAN = NEW.EAN;
		IF d_time > NOW() AND valid = FALSE 
        THEN
		    UPDATE Ticket SET visitor_id = NEW.visitor_id WHERE EAN = NEW.EAN;
			UPDATE Resale_Queue SET sold = TRUE WHERE EAN = NEW.EAN;
            SET NEW.satisfied = TRUE;
		END IF;
	ELSE
		SELECT start_time INTO d_time FROM Event_P WHERE event_id = NEW.event_id;
	   	SELECT rq.EAN INTO d_EAN
		FROM Resale_queue rq
		JOIN Ticket t ON rq.EAN = t.EAN 
		WHERE t.event_id = NEW.event_id AND t.ticket_type = NEW.ticket_type AND sold = FALSE
		ORDER BY rq.sale_interest ASC
		LIMIT 1;
	
	   	IF d_EAN IS NOT NULL AND d_time >NOW()
        THEN
			UPDATE Ticket  SET visitor_id = NEW.visitor_id WHERE EAN = d_EAN;
            UPDATE Resale_Queue SET sold = TRUE WHERE EAN = d_EAN;
            SET NEW.satisfied = TRUE;
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


DROP TRIGGER IF EXISTS future_activated_insert;
DELIMITER $$
CREATE TRIGGER future_activated_insert 
BEFORE INSERT ON Ticket FOR EACH ROW
BEGIN
	DECLARE event_date DATETIME;
	
	SELECT start_time INTO event_date
	FROM Event_P 
	WHERE event_id = NEW.event_id;
	
	IF(NEW.activated = TRUE AND event_date > CURDATE()) THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'activated ticket for future event';
	END IF;
END$$
DELIMITER ;


DROP TRIGGER IF EXISTS future_activated_update;
DELIMITER $$
CREATE TRIGGER future_activated_update
BEFORE UPDATE ON Ticket FOR EACH ROW
BEGIN
	DECLARE event_date DATETIME;
	
	SELECT start_time INTO event_date
	FROM Event_P 
	WHERE event_id = NEW.event_id;
	
	IF(NEW.activated = TRUE AND event_date > CURDATE()) THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'activated ticket for future event';
	END IF;
END$$
DELIMITER ;


DROP TRIGGER IF EXISTS two_tickets_update;
DELIMITER //
CREATE TRIGGER two_tickets_update
BEFORE UPDATE ON Ticket FOR EACH ROW
BEGIN
	DECLARE cnt INT;
    
    SELECT COUNT(*) INTO cnt
    FROM Ticket
    WHERE visitor_id = NEW.visitor_id AND event_id = NEW.event_id;
    
    IF(cnt > 0)
    THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "A visitor can't purchase two tickets for the same event.";
	END IF;
    
END//
DELIMITER ;


DROP TRIGGER IF EXISTS two_tickets_insert;
DELIMITER //
CREATE TRIGGER two_tickets_insert
BEFORE INSERT ON Ticket FOR EACH ROW
BEGIN
	DECLARE cnt INT;
    
    SELECT COUNT(*) INTO cnt
    FROM Ticket
    WHERE visitor_id = NEW.visitor_id AND event_id = NEW.event_id;
    
    IF(cnt > 0)
    THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "A visitor can't purchase two tickets for the same event.";
	END IF;
    
END//
DELIMITER ;


-- ------------------------------------------------------------------------------------------------------------------
-- VIEWS 
-- ------------------------------------------------------------------------------------------------------------------

DROP VIEW IF EXISTS PerformerGenre;
CREATE VIEW PerformerGenre AS 
SELECT DISTINCT ps.performer_id AS performer_id, s.genre_id AS genre
FROM PerformerSubgenre ps 
JOIN Subgenre s ON s.subgenre_id = ps.subgenre_id;

DROP VIEW IF EXISTS EventStaff;
CREATE VIEW EventStaff AS
SELECT e.festival_id AS Festival, e.festival_day AS Festival_day, e.start_time AS start_time, s.role_id AS Role, s.xp AS xp
FROM 
	Event_P e
JOIN 
	Employment es ON e.event_id = es.event_id
JOIN 
	Staff s ON s.staff_id = es.staff_id;

DROP VIEW IF EXISTS PerformerPerformance;
CREATE VIEW PerformerPerformance AS
SELECT pf.performer_name AS Performer, pf.performer_id AS Performer_id, p.event_id AS Event, p.performance_id AS performance, p.type_id AS Type 
FROM Performance p 
JOIN Performer pf ON pf.performer_id = p.performer_id;

DROP VIEW IF EXISTS VisitorTicket;
CREATE VIEW VisitorTicket AS
SELECT v.first_name AS First_Name, v.last_name AS Last_Name, v.visitor_id AS Visitor_id, e.festival_id AS Festival, e.festival_day AS Festival_day, t.EAN AS EAN
FROM Visitor v
JOIN Ticket t ON t.visitor_id = v.visitor_id
JOIN Event_P e ON t.event_id = e.event_id;

DROP VIEW IF EXISTS FestivalPerformer;
CREATE VIEW FestivalPerformer AS
SELECT e.festival_id AS Festival, e.festival_day AS Festival_day, p.performer AS Performer
FROM Event_P e
JOIN PerformerPerformance p ON p.Event = e.event_id;
