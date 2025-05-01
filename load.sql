--Continents
INSERT INTO Continent (continent_name) VALUES
('Africa'),
('Antarctica'),
('Asia'),
('Europe'),
('North America'),
('South America'),
('Australia');

--9 Festival
INSERT INTO Festival (festival_id, start_day, end_day, duration, image, image_caption) VALUES
(2018, '2018-06-10', '2018-06-14', 5, 'https://example.com/img1.jpg', 'The summer heat began here'),
(2019, '2019-07-05', '2019-07-07', 3, 'https://example.com/img2.jpg', 'Jazz vibes under the stars'),
(2020, '2020-08-01', '2020-08-03', 3, 'https://example.com/img3.jpg', 'Socially-distanced rhythms'),
(2021, '2021-06-20', '2021-06-24', 5, 'https://example.com/img4.jpg', 'The comeback edition'),
(2022, '2022-07-11', '2022-07-14', 4, 'https://example.com/img5.jpg', 'Four days of rock'),
(2023, '2023-05-15', '2023-05-17', 3, 'https://example.com/img6.jpg', 'Spring sounds bloom'),
(2024, '2024-06-12', '2024-06-15', 4, 'https://example.com/img8.jpg', 'Golden summer rhythms'),
(2025, '2025-07-08', '2025-07-13', 6, 'https://example.com/img9.jpg', 'Future fest is here'),
(2026, '2026-08-20', '2026-08-24', 5, 'https://example.com/img10.jpg', 'Next-gen musical revolution');

--9 locations
INSERT INTO Location (loc_id, festival_id, coor_long, coor_lat, address, city, country, continent_name) VALUES
(1, 2018, 2.3522, 48.8566, '12 Rue de la Musique', 'Paris', 'France', 'Europe'),
(2, 2019, -0.1276, 51.5074, '221B Baker Street', 'London', 'United Kingdom', 'Europe'),
(3, 2020, 139.6917, 35.6895, '1-1 Chiyoda', 'Tokyo', 'Japan', 'Asia'),
(4, 2021, -43.1729, -22.9068, 'Av. Atlântica', 'Rio de Janeiro', 'Brazil', 'South America'),
(5, 2023, -73.9352, 40.7306, 'Central Park West', 'New York', 'USA', 'North America'),
(6, 2025, 151.2093, -33.8688, 'Darling Harbour', 'Sydney', 'Australia', 'Australia'),
(7, 2026, 18.4241, -33.9249, 'Long Street', 'Cape Town', 'South Africa', 'Africa'),
(8, 2022, 103.8198, 1.3521, 'Marina Bay Sands', 'Singapore', 'Singapore', 'Asia'),
(9, 2024, 11.5810, 48.1351, 'Königsplatz', 'Munich', 'Germany', 'Europe');


--30 stages
INSERT INTO Stage (stage_name) VALUES 
('Echo Arena'),
('Sunset Stage'),
('Main Vibe'),
('Bass Jungle'),
('The Dome'),
('Sonic Bloom'),
('Harmony Hall'),
('Moonlight Deck'),
('Firefly Stage'),
('Zenith Plaza'),
('Aurora Grounds'),
('Electric Forest'),
('Radiance Square'),
('Fusion Bay'),
('Cosmic Cove'),
('Neon Nest'),
('The Drop'),
('Wavefront'),
('Pulse Point'),
('Nightfall Stage'),
('Infinity Hall'),
('Twilight Arena'),
('Skyline Beats'),
('Velocity Hall'),
('Groove Garden'),
('Tempo Terrace'),
('Phoenix Pit'),
('Siren Stage'),
('Cloud Nine'),
('The Spark');

INSERT INTO Description (descript) VALUES
('Open-Air'),
('Indoor'),
('Secluded'),
('Spacious'),
('Underground'),
('Outdoor'),
('Cozy'),
('Elevated'),
('Panoramic'),
('Intimate');
