CREATE TABLE Continent (
  continent_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  continent_name varchar(20) 
);

CREATE TABLE Festival (
  festival_id YEAR PRIMARY KEY,
  start_day DATE NOT NULL,
  end_day date NOT NULL,
  duration integer,
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
  CONSTRAINT fk_festival FOREIGN KEY (festival_id) REFERENCES Festival(festival_id)
  ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_continent FOREIGN KEY (continent_id) REFERENCES Continent(continent_id)
);

CREATE TABLE Stage (
  stage_id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  stage_name varchar(20) NOT NULL  
);

CREATE TABLE Role(
  role_id INT NOT NULL AUTO_INCREMENT,
  role_name varchar(20) PRIMARY KEY NOT NULL 
);

CREATE TABLE Experience (
  experience_level varchar(20) UNIQUE, 
  xp INT AUTO_INCREMENT PRIMARY KEY
);


CREATE TABLE Staff (
  staff_id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  first_name varchar(20) NOT NULL,
  last_name varchar(30) NOT NULL,
  age integer NOT NULL,
  experience_level varchar(20) NOT NULL,
  role_name varchar(20) NOT NULL,
  CONSTRAINT fk_role FOREIGN KEY (role_name) REFERENCES Role(role_name)
  ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_experience FOREIGN KEY (experience_level) REFERENCES Experience(experience_level)
  ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE Description (
  desc_id INT NOT NULL AUTO_INCREMENT,
  descript varchar(40) PRIMARY KEY  
);



CREATE TABLE Equipment (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  equip_id varchar(20) NOT NULL UNIQUE,
  image varchar(100) NOT NULL CHECK (image like 'https://%'),
  image_caption varchar(100) NOT NULL
);


CREATE TABLE Event (
  event_id integer PRIMARY KEY NOT NULL ,
  festival_id YEAR NOT NULL,
  stage_id INT NOT NULL,
  descript varchar(40) NOT NULL,
  capacity INT NOT NULL,
  start_time DATETIME NOT NULL,
  end_time DATETIME NOT NULL, 
  festival_day INT NOT NULL,
  CONSTRAINT fk_festival FOREIGN KEY (festival_id) REFERENCES Festival(festival_id)
  ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_stage FOREIGN KEY (stage_id) REFERENCES Stage(stage_id)
  ON DELETE RESTRICT ON UPDATE CASCADE
  CONSTRAINT descript FOREIGN KEY (descript) REFERENCES Description(descript)
  ON DELETE RESTRICT ON UPDATE CASCADE
  
);


CREATE TABLE EventEquip (
  equip_id varchar(20) NOT NULL,
  event_id integer NOT NULL,
  quantity int,
  CONSTRAINT fk_equip_id FOREIGN KEY (equip_id) REFERENCES Equipment(equip_id)
  ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_event_id FOREIGN KEY (event_id) REFERENCES Event(event_id)
  ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Employment (
  contract_id int PRIMARY KEY NOT NULL,
  staff_id int NOT NULL,
  event_id int NOT NULL,
  CONSTRAINT fk_staff_id FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
  ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_event_id FOREIGN KEY (event_id) REFERENCES Event(event_id)
  ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Artist (
  artist_id INT PRIMARY KEY NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  stage_name VARCHAR(30) NOT NULL,
  birthDATE DATE NOT NULL,
  website VARCHAR(30),
  insta VARCHAR(30),
  cons_years INT NOT NULL CHECK(cons_years BETWEEN 0 AND 3), 
  last_year YEAR NOT NULL
);

CREATE TABLE Band (
  band_id INT PRIMARY KEY NOT NULL,
  band_name VARCHAR(30) NOT NULL,
  form_date DATE NOT NULL,
  website VARCHAR(30),
  insta VARCHAR(30),
  cons_years INT NOT NULL CHECK(cons_years BETWEEN 0 AND 3), 
  last_year YEAR NOT NULL
);

CREATE TABLE BandMembers (
  band_id INT,
  artist_id INT,
  joined_in DATE,
  CONSTRAINT fk_band FOREIGN KEY (band_id) REFERENCES Band(band_id)
  ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_artist FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
  ON DELETE CASCADE ON UPDATE CASCADE 
);

CREATE TABLE Genre (
  genre_id VARCHAR(20) PRIMARY KEY NOT NULL
);

CREATE TABLE Subgenre (
  subgenre_id VARCHAR(40) PRIMARY KEY,
  genre_id VARCHAR(20),
  CONSTRAINT fk_genre FOREIGN KEY (genre) REFERENCES Genre(name)
  ON DELETE CASCADE ON UPDATE RESTRICT4
);

CREATE TABLE Performer (
  performer_id INT PRIMARY KEY NOT NULL,
  performer_name varchar(30) NOT NULL, 
  artist_nband bool NOT NULL,
  artist_id INT UNIQUE,
  band_id INT UNIQUE,
  CHECK ((artist_nband = TRUE AND artist_id IS NOT NULL AND band_id IS NULL) OR
       (artist_nband = FALSE AND band_id IS NOT NULL AND artist_id IS NULL)),
  CONSTRAINT fk_artist FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
  ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_band FOREIGN KEY (band_id) REFERENCES Band(band_id)
  ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE PerformerSubgenre (
  performer_id INT,
  subgenre_id VARCHAR(40),
  CONSTRAINT fk_perfomer FOREIGN KEY (perfomer_id) REFERENCES Performer(performer_id)
  ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_subgenres FOREIGN KEY (subgenre) REFERENCES Subgenre(name)
  ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Performance(
  performance_id int PRIMARY KEY NOT NULL,
  performer_id int NOT NULL,
  event_id int,
  type_id varchar(40),
  start_time time NOT NULL,
  end_time time NOT NULL,
  duration int GENERATED ALWAYS AS (TIMESTAMPDIFF(MINUTE,start_time,end_time)) STORED
  CHECK (duration <=180),
  CONSTRAINT pfk_performer_id FOREIGN KEY (performer_id) REFERENCES Performer(performer_id)
  ON UPDATE CASCADE
  CONSTRAINT fk_event_id FOREIGN KEY (event_id) REFERENCES Event(event_id)
  ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Visitor (
   visitor_id INT AUTO_INCREMENT PRIMARY KEY,
   first_name VARCHAR(20) NOT NULL,
   last_name VARCHAR(30) NOT NULL,
   age INT NOT NULL,
   phone VARCHAR(15) NOT NULL UNIQUE
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
   EAN VARCHAR(13) PRIMARY KEY,
   activated BOOL NOT NULL DEFAULT FALSE,
   CHECK (EAN REGEXP '^[0-9]{13}$'),
   FOREIGN KEY (event_id) REFERENCES Event(event_id),
   FOREIGN KEY (visitor_id) REFERENCES Visitor(visitor_id), 
   FOREIGN KEY (ticket_type) REFERENCES Ticket_Class(ticket_type), 
   FOREIGN KEY (pay_method) REFERENCES PayedWith(pay_method)   
);


CREATE TABLE Resale_queue (
   EAN VARCHAR(13) PRIMARY KEY,
   sale_interest TIMESTAMP NOT NULL,
   FOREIGN KEY (EAN) REFERENCES Ticket(EAN)
);

CREATE TABLE Buyer (
   buyer_id INT AUTO_INCREMENT PRIMARY KEY,
   visitor_id INT NOT NULL,
   ticket_type VARCHAR(10),
   EAN VARCHAR(13) ,
   event_id INT,
   purchase_interest TIMESTAMP NOT NULL,
   FOREIGN KEY (EAN) REFERENCES Resale_queue(EAN) ON DELETE CASCADE,
   FOREIGN KEY (visitor_id) REFERENCES Visitor(visitor_id),
   FOREIGN KEY (event_id) REFERENCES Event(event_id),
   FOREIGN KEY (ticket_type) REFERENCES Ticket_Class(ticket_type),
   CHECK (
	(EAN IS NOT NULL AND event_id IS NULL AND ticket_type IS NULL) OR
	(EAN IS NULL AND event_id IS NOT NULL AND ticket_type IS NOT NULL) 
)
);

CREATE TABLE Likert (
   scale INT PRIMARY KEY
 );

CREATE TABLE Review (
   EAN VARCHAR(13) PRIMARY KEY,
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
   FOREIGN KEY (overall) REFERENCES Likert(scale)
);


DELIMITER $$

CREATE TRIGGER check_event_sold_out
BEFORE INSERT ON Resale_queue
FOR EACH ROW
BEGIN
	DECLARE r_event_id INT;
	DECLARE num_sold INT;
	DECLARE r_event_capacity INT;
	DECLARE r_status BOOL;
	DECLARE r_time DATETIME;
    
	SELECT event_id, activated INTO r_event_id, r_status
	FROM Ticket
	WHERE EAN = NEW.EAN;
	
	SELECT COUNT(*) INTO num_sold
	FROM Ticket
	WHERE event_id = r_event_id;
	
	SELECT capacity, start_time INTO r_event_capacity, r_time
	FROM Event 
	WHERE event_id = r_event_id;
	
	IF num_sold < r_event_capacity 
	   OR r_status = TRUE
	   OR r_time < NOW() THEN
	   SIGNAL SQLSTATE '45000'
	   SET MESSAGE_TEXT = 'Ticket cannot be resold.';
	END IF;
END$$

DELIMITER ;



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
	FROM Event 
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


DELIMITER $$

CREATE TRIGGER match_on_buyer
AFTER INSERT ON Buyer
FOR EACH ROW
BEGIN
	DECLARE d_time DATETIME;
	DECLARE d_event INT;
	DECLARE d_EAN INT;
	
	
	IF NEW.EAN IS NOT NULL THEN	
		SELECT event_id INTO d_event FROM Ticket WHERE EAN = NEW.EAN;
		SELECT start_time INTO d_time FROM Event WHERE event_id = d_event;
		IF d_time > NOW() THEN
		    UPDATE Ticket SET visitor_id = NEW.visitor_id WHERE EAN = NEW.EAN;
		END IF
		IF d_time < NOW() THEN
			DELETE FROM Buyer WHERE event_id = d_event;
			DELETE FROM Resale_queue WHERE EAN IN (
				SELECT EAN FROM Ticket WHERE event_id = d_event
			);
		END IF
		DELETE FROM Resale_queue WHERE EAN = NEW.EAN;
		END IF
	
	ELSE
		SELECT start_time INTO d_time FROM Event WHERE event_id = NEW.event_id;
		
		IF d_time < NOW() THEN
			DELETE FROM Buyer WHERE event_id = NEW.event_id;
			DELETE FROM Resale_queue WHERE EAN IN (
				SELECT EAN FROM Ticket WHERE event_id = d_event
			);
		END IF
		
	    SELECT EAN INTO d_EAN
		FROM Resale_queue rq
		JOIN Ticket t ON rq.EAN = t.EAN 
		WHERE t.event_id = NEW.event_id
			AND t.ticket_type = NEW.ticket_type 
		ORDER BY rq.sale_interest ASC
		LIMIT 1;
		
		IF d_EAN IS NOT NULL THEN
			UPDATE Ticket SET visitor_id = NEW.visitor_id WHERE EAN = d_EAN;
			DELETE FROM Resale_queue WHERE EAN = d_EAN;
		END IF
	END IF	
	
	END$$
	

DELIMITER ;

DELIMITER $$

CREATE TRIGGER check_stage_overlap
BEFORE INSERT ON Event
FOR EACH ROW
BEGIN
    DECLARE overlap_count INT;

    SELECT COUNT(*) INTO overlap_count
    FROM Events
    WHERE stage_id = NEW.stage_id
    AND NOT (NEW.end_time <= start_time OR NEW.start_time>=end_time);

    IF overlap_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "Stage is used at that time"
    END IF;
END $$

DELIMITER ;

DELIMITER $$ 

CREATE TRIGGER check_security_help_staff
BEFORE INSERT ON Employment
FOR EACH ROW
BEGIN
    DECLARE sec_staff_count INT;
    DECLARE event_capacity INT;
    DECLARE help_staff_count INT;

    SELECT COUNT(*) INTO sec_staff_count
    FROM Employment 
    WHERE role_name = NEW.role_name AND event_id = NEW.event_id;

    SELECT COUNT(*) INTO help_staff_count
    FROM Employment 
    WHERE role_name = NEW.role_name AND event_id = NEW.event_id;

    SELECT capacity INTO event_capacity
    FROM Event
    WHERE event_id = NEW.event_id;

    IF sec_staff_count >= 0.05*event_capacity THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Too many security staff in this event';
    END IF;
    IF help_staff_count >= 0.02*event_capacity THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Too many help staff in this event';
    END IF;
END $$

DELIMITER ;

DELIMITER $$ 


CREATE TRIGGER staff_overlap
BEFORE INSERT ON Employment
FOR EACH ROW
BEGIN
    DECLARE count_staff INT;

    SELECT COUNT(*) INTO count_staff
    FROM Employment em
    JOIN Event ev ON em.event_id = ev.event_id
    JOIN Event ev2 ON NEW.event_id = ev2.event_id
    WHERE staff_id = NEW.staff_id 
    AND DATE(ev.start_time) = DATE(ev2.start_time)

    IF count_staff>1 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Overlapping Staff';
    END IF;
END$$

DELIMITER ;

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
        IF TIMESTAMPDIFF(MINUTE,NEW.end_time,next_start) NOT BETWEEN 5 AND 30 
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

    SELECT capacity AS cap
    FROM Event e
    WHERE e.event_id = NEW.event_id;

    IF (ticket_count>cap) THEN 
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Tickets are sold out';
    END IF;
END$$

DELIMITER ;

DELIMITER $$ 


CREATE TRIGGER check_vip_tickets
BEFORE INSERT ON Ticket
FOR EACH ROW
BEGIN
    DECLARE vip_count INT;
    DECLARE event_capacity INT;
    

    SELECT COUNT(*) INTO vip_count
    FROM Ticket t 
    WHERE event_id = NEW.event_id AND ticket_type = 'VIP';

    SELECT capacity INTO event_capacity
    FROM Event
    WHERE event_id = NEW.event_id;

    IF vip_count >= 0.1*event_capacity THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'VIP section is sold out';
    END IF;
END$$

DELIMITER ;

DELIMITER $$ 


CREATE TRIGGER check_activated_review
BEFORE INSERT ON Review
FOR EACH ROW
BEGIN
    DECLARE active BOOL;

    SELECT activated INTO active 
    FROM Tickets 
    WHERE EAN = NEW.EAN;

    IF active=FALSE THEN 
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Non-activated tickets are not eligible for reviews';
    END IF;
END$$

DELIMITER ;

DELIMITER //

CREATE TRIGGER delete_future_performances
BEFORE DELETE ON Performer
FOR EACH ROW
BEGIN
    DECLARE count INT;

    SELECT COUNT() AS count FROM Performance
    WHERE performer_id = OLD.performer_id
    AND start_time > CURRENT_TIME;

    IF COUNT()>0 THEN 
    SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "Cannot delete performer scheduled to perform"
    END IF;
END//

DELIMITER;

DELIMITER //

	
	


