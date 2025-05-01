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
INSERT INTO Stage (stage_name, descript, capacity) VALUES 
('Echo Arena', ),
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

INSERT INTO Event (event_id, festival_id, stage_id, descript, capacity, start_time, end_time, festival_day) VALUES
(1, 2018, 1, 'Open-Air', 50, '2018-06-10 12:00:00', '2018-06-10 16:00:00', 1),
(2, 2018, 12, 'Indoor', 300, '2018-06-10 13:00:00', '2018-06-10 17:00:00', 1),
(3, 2018, 13, 'Secluded', 150, '2018-06-10 14:00:00', '2018-06-10 18:00:00', 1),
(4, 2018, 14, 'Spacious', 100, '2018-06-10 15:00:00', '2018-06-10 19:00:00', 1),
(5, 2018, 5, 'Underground', 80, '2018-06-10 16:00:00', '2018-06-10 20:00:00', 1),
(6, 2018, 16, 'Outdoor', 70, '2018-06-11 12:00:00', '2018-06-11 16:00:00', 2),
(7, 2018, 7, 'Cozy', 200, '2018-06-11 13:00:00', '2018-06-11 17:00:00', 2),
(8, 2018, 8, 'Elevated', 400, '2018-06-11 14:00:00', '2018-06-11 18:00:00', 2),
(9, 2018, 9, 'Panoramic', 120, '2018-06-11 15:00:00', '2018-06-11 19:00:00', 2),
(10, 2018, 10, 'Intimate', 100, '2018-06-11 16:00:00', '2018-06-11 20:00:00', 2),
(11, 2019, 1, 'Open-Air', 600, '2019-07-05 12:00:00', '2019-07-05 16:00:00', 1),
(12, 2019, 22, 'Indoor', 350, '2019-07-05 13:00:00', '2019-07-05 17:00:00', 1),
(13, 2019, 23, 'Secluded', 180, '2019-07-05 14:00:00', '2019-07-05 18:00:00', 1),
(14, 2019, 14, 'Spacious', 110, '2019-07-05 15:00:00', '2019-07-05 19:00:00', 1),
(15, 2019, 5, 'Underground', 100, '2019-07-05 16:00:00', '2019-07-05 20:00:00', 1),
(16, 2019, 6, 'Outdoor', 750, '2019-07-06 12:00:00', '2019-07-06 16:00:00', 2),
(17, 2019, 7, 'Cozy', 250, '2019-07-06 13:00:00', '2019-07-06 17:00:00', 2),
(18, 2019, 8, 'Elevated', 450, '2019-07-06 14:00:00', '2019-07-06 18:00:00', 2),
(19, 2019, 9, 'Panoramic', 130, '2019-07-06 15:00:00', '2019-07-06 19:00:00', 2),
(20, 2019, 10, 'Intimate', 120, '2019-07-06 16:00:00', '2019-07-06 20:00:00', 2)

--
INSERT INTO Equipment (equip_id, image, image_caption) VALUES
('EQP-001', 'https://example.com/images/drill.jpg', 'Heavy-duty power drill'),
('EQP-002', 'https://example.com/images/saw.jpg', 'Circular saw 2000W'),
('EQP-003', 'https://example.com/images/ladder.jpg', 'Aluminum extension ladder'),
('EQP-004', 'https://example.com/images/generator.jpg', 'Portable diesel generator'),
('EQP-005', 'https://example.com/images/welder.jpg', 'Arc welding machine'),
('EQP-006', 'https://example.com/images/compressor.jpg', 'Industrial air compressor'),
('EQP-007', 'https://example.com/images/scaffold.jpg', 'Modular scaffolding system'),
('EQP-008', 'https://example.com/images/concrete-mixer.jpg', 'Electric concrete mixer'),
('EQP-009', 'https://example.com/images/forklift.jpg', '3-ton forklift'),
('EQP-010', 'https://example.com/images/crane.jpg', 'Mobile hydraulic crane');
 
--50 events
INSERT INTO Event_P (event_id, festival_id, stage_id, start_time, end_time, festival_day) VALUES
(1, 2018, 1, '2018-06-10 12:00:00', '2018-06-10 16:00:00', 1),
(2, 2018, 2, '2018-06-10 13:30:00', '2018-06-10 17:30:00', 1),
(3, 2018, 3, '2018-06-11 14:00:00', '2018-06-11 18:00:00', 2),
(4, 2018, 1, '2018-06-11 15:00:00', '2018-06-11 19:00:00', 2),
(5, 2018, 2, '2018-06-12 12:30:00', '2018-06-12 16:30:00', 3),
(6, 2018, 3, '2018-06-12 14:00:00', '2018-06-12 18:00:00', 3),
(7, 2018, 3, '2018-06-13 13:30:00', '2018-06-13 17:30:00', 4),
(8, 2018, 1, '2018-06-13 15:00:00', '2018-06-13 19:00:00', 4),
(9, 2018, 2, '2018-06-14 12:00:00', '2018-06-14 16:00:00', 5),
(10, 2018, 1, '2018-06-14 14:00:00', '2018-06-14 18:00:00', 5),
(11, 2019, 4, '2019-07-05 12:00:00', '2019-07-05 16:00:00', 1),
(12, 2019, 30, '2019-07-05 13:30:00', '2019-07-05 17:30:00', 1),
(13, 2019, 4, '2019-07-06 14:00:00', '2019-07-06 18:00:00', 2),
(14, 2019, 5, '2019-07-06 15:00:00', '2019-07-06 19:00:00', 2),
(15, 2019, 6, '2019-07-07 12:30:00', '2019-07-07 16:30:00', 3),
(16, 2019, 4, '2019-07-07 14:00:00', '2019-07-07 18:00:00', 3),
(17, 2020, 7, '2020-08-01 13:00:00', '2020-08-01 17:00:00', 1),
(18, 2020, 8, '2020-08-01 14:30:00', '2020-08-01 18:30:00', 1),
(19, 2020, 29, '2020-08-02 12:00:00', '2020-08-02 16:00:00', 2),
(20, 2020, 7, '2020-08-02 13:30:00', '2020-08-02 17:30:00', 2),
(21, 2020, 8, '2020-08-03 12:00:00', '2020-08-03 16:00:00', 3),
(22, 2020, 9, '2020-08-03 14:00:00', '2020-08-03 18:00:00', 3),
(23, 2021, 10, '2021-06-20 12:00:00', '2021-06-20 16:00:00', 1),
(24, 2021, 11, '2021-06-20 13:30:00', '2021-06-20 17:30:00', 1),
(25, 2021, 12, '2021-06-21 12:00:00', '2021-06-21 16:00:00', 2),
(26, 2021, 10, '2021-06-21 14:30:00', '2021-06-21 18:30:00', 2),
(27, 2022, 11, '2022-07-11 12:00:00', '2022-07-11 16:00:00', 1),
(28, 2022, 12, '2022-07-11 13:30:00', '2022-07-11 17:30:00', 1),
(29, 2022, 10, '2022-07-12 14:00:00', '2022-07-12 18:00:00', 2),
(30, 2022, 11, '2022-07-12 15:30:00', '2022-07-12 19:30:00', 2),
(31, 2022, 13, '2022-07-13 12:00:00', '2022-07-13 16:00:00', 3),
(32, 2022, 12, '2022-07-13 13:30:00', '2022-07-13 17:30:00', 3),
(33, 2023, 27, '2023-05-15 12:00:00', '2023-05-15 16:00:00', 1),
(34, 2023, 14, '2023-05-15 13:00:00', '2023-05-15 17:00:00', 1),
(35, 2023, 12, '2023-05-16 14:00:00', '2023-05-16 18:00:00', 2),
(36, 2023, 14, '2023-05-16 15:00:00', '2023-05-16 19:00:00', 2),
(37, 2024, 15, '2024-06-12 12:00:00', '2024-06-12 16:00:00', 1),
(38, 2024, 15, '2024-06-12 13:30:00', '2024-06-12 17:30:00', 1),
(39, 2025, 28, '2025-07-08 12:00:00', '2025-07-08 16:00:00', 1),
(40, 2025, 16, '2025-07-08 13:30:00', '2025-07-08 17:30:00', 1),
(41, 2026, 17, '2026-08-20 12:00:00', '2026-08-20 16:00:00', 1),
(42, 2026, 18, '2026-08-20 13:30:00', '2026-08-20 17:30:00', 1),
(43, 2026, 19, '2026-08-21 14:00:00', '2026-08-21 18:00:00', 2),
(44, 2026, 20, '2026-08-21 15:30:00', '2026-08-21 19:30:00', 2),
(45, 2026, 21, '2026-08-22 12:00:00', '2026-08-22 16:00:00', 3),
(46, 2026, 22, '2026-08-22 13:00:00', '2026-08-22 17:00:00', 3),
(47, 2026, 23, '2026-08-23 14:00:00', '2026-08-23 18:00:00', 4),
(48, 2026, 24, '2026-08-23 15:00:00', '2026-08-23 19:00:00', 4),
(49, 2026, 25, '2026-08-24 12:00:00', '2026-08-24 16:00:00', 5),
(50, 2026, 26, '2026-08-24 13:30:00', '2026-08-24 17:30:00', 5);


INSERT INTO Role (role_name) VALUES
('Technician'),
('Security'),
('Auxiliary');

INSERT INTO Experience (experience_level) VALUES
('Beginner'),
('Intermediate'),
('Advanced'),
('Expert'),
('Master');
