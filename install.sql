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
  continent_name varchar(20) 
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

CREATE TABLE Description (
  desc_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  descript varchar(40) NOT NULL UNIQUE
);

CREATE TABLE Stage (
  stage_id integer PRIMARY KEY NOT NULL AUTO_INCREMENT,
  stage_name varchar(20) NOT NULL,  
  desc_id varchar(40) NOT NULL,
  capacity INT NOT NULL,
  CONSTRAINT descript FOREIGN KEY (desc_id) REFERENCES Description(desc_id)
  ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Role(
  role_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  role_name varchar(20) NOT NULL 
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
  role_id INT NOT NULL,
  CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES Role(role_id)
  ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_experience FOREIGN KEY (experience_level) REFERENCES Experience(experience_level)
  ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE Equipment (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  equip_id varchar(20) NOT NULL UNIQUE,
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
  FOREIGN KEY (festival_id) REFERENCES Festival(festival_id)
  ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (stage_id) REFERENCES Stage(stage_id)
  ON DELETE RESTRICT ON UPDATE CASCADE
);


CREATE TABLE EventEquip (
  equip_id varchar(20) NOT NULL,
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
  birthDATE DATE NOT NULL,
  website VARCHAR(30),
  insta VARCHAR(30),
  participations INT NOT NULL DEFAULT 0
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
  FOREIGN KEY (band_id) REFERENCES Band(band_id)
  ON DELETE CASCADE ON UPDATE CASCADE,
 FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
  ON DELETE CASCADE ON UPDATE CASCADE 
);

CREATE TABLE Genre (
  genre_id VARCHAR(20) PRIMARY KEY NOT NULL
);

CREATE TABLE Subgenre (
  subgenre_id VARCHAR(40) PRIMARY KEY,
  genre_id VARCHAR(20),
  FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
  ON DELETE CASCADE ON UPDATE RESTRICT
);

CREATE TABLE Performer (
  performer_id INT PRIMARY KEY NOT NULL,
  performer_name varchar(30) NOT NULL, 
  artist_nband bool NOT NULL,
  artist_id INT UNIQUE,
  band_id INT UNIQUE CHECK ((artist_nband = TRUE AND artist_id IS NOT NULL AND band_id IS NULL) OR
       (artist_nband = FALSE AND band_id IS NOT NULL AND artist_id IS NULL)),
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

CREATE TABLE Performance(
  performance_id int PRIMARY KEY NOT NULL,
  performer_id int NOT NULL,
  event_id int,
  type_id varchar(40),
  start_time time NOT NULL,
  end_time time NOT NULL,
  duration int GENERATED ALWAYS AS (TIMESTAMPDIFF(MINUTE,start_time,end_time)) STORED
  CHECK (duration <=180),
  FOREIGN KEY (performer_id) REFERENCES Performer(performer_id)
  ON UPDATE CASCADE,
  FOREIGN KEY (event_id) REFERENCES Event_P(event_id)
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
   FOREIGN KEY (event_id) REFERENCES Event_P(event_id),
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
   EAN VARCHAR(13) NOT NULL,
   performance_id NOT NULL,
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

	
	
	


