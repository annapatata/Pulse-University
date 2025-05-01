--Continents
INSERT INTO Continent (continent_name, image, image_caption) VALUES
('Europe', 'https://example.com/images/europe.jpg', 'Ancient cities, diverse cultures, and music heritage'),
('Asia', 'https://example.com/images/asia.jpg', 'Vibrant landscapes and rhythmic traditions'),
('North America', 'https://example.com/images/north-america.jpg', 'Home of iconic music festivals and genres'),
('South America', 'https://example.com/images/south-america.jpg', 'Passionate rhythms and colorful performances'),
('Africa', 'https://example.com/images/africa.jpg', 'Cradle of rhythm and tribal beats'),
('Australia', 'https://example.com/images/australia.jpg', 'Island continent with open-air festivals'),
('Antarctica', 'https://example.com/images/antarctica.jpg', 'The coolest stage on Earth – literally!');

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

--10 descriptions
INSERT INTO Description (descript, image, image_caption) VALUES
('Open-Air', 'https://example.com/images/open-air.jpg', 'Fresh air and open skies set the mood'),
('Indoor', 'https://example.com/images/indoor.jpg', 'Enclosed space with controlled acoustics'),
('Secluded', 'https://example.com/images/secluded.jpg', 'Hidden away for an exclusive vibe'),
('Spacious', 'https://example.com/images/spacious.jpg', 'Plenty of room to dance and explore'),
('Underground', 'https://example.com/images/underground.jpg', 'Low-key and immersive music environment'),
('Outdoor', 'https://example.com/images/outdoor.jpg', 'Under the sun or stars with natural surroundings'),
('Cozy', 'https://example.com/images/cozy.jpg', 'A small and comfortable venue'),
('Elevated', 'https://example.com/images/elevated.jpg', 'High ground for amazing views and sound'),
('Panoramic', 'https://example.com/images/panoramic.jpg', '360-degree experience with sweeping views'),
('Intimate', 'https://example.com/images/intimate.jpg', 'Close connections with performers and crowd');

--9 locations
INSERT INTO Location (loc_id, festival_id, coor_long, coor_lat, address, city, country, continent_id,image, image_caption) VALUES
(1, 2018, 2.3522, 48.8566, '12 Rue de la Musique', 'Paris', 'France', 4,'https://example.com/img1.jpg', 'The summer heat began here'),
(2, 2019, -0.1276, 51.5074, '221B Baker Street', 'London', 'United Kingdom', 4,'https://example.com/img1.jpg', 'The summer heat began here'),
(3, 2020, 139.6917, 35.6895, '1-1 Chiyoda', 'Tokyo', 'Japan', 3,'https://example.com/img1.jpg', 'The summer heat began here'),
(4, 2021, -43.1729, -22.9068, 'Av. Atlântica', 'Rio de Janeiro', 'Brazil', 6,'https://example.com/img1.jpg', 'The summer heat began here'),
(5, 2023, -73.9352, 40.7306, 'Central Park West', 'New York', 'USA', 5,'https://example.com/img1.jpg', 'The summer heat began here'),
(6, 2025, 151.2093, -33.8688, 'Darling Harbour', 'Sydney', 'Australia', 7,'https://example.com/img1.jpg', 'The summer heat began here'),
(7, 2026, 18.4241, -33.9249, 'Long Street', 'Cape Town', 'South Africa', 1,'https://example.com/img1.jpg', 'The summer heat began here'),
(8, 2022, 103.8198, 1.3521, 'Marina Bay Sands', 'Singapore', 'Singapore', 3,'https://example.com/img1.jpg', 'The summer heat began here'),
(9, 2024, 11.5810, 48.1351, 'Königsplatz', 'Munich', 'Germany', 4,'https://example.com/img1.jpg', 'The summer heat began here');

--30 stages
INSERT INTO Stage (stage_id, stage_name, desc_id, capacity, image, image_caption) VALUES 
(1,'Echo Arena', 1, 100, 'https://example.com/echo.jpg', 'Massive indoor stage with powerful acoustics'),
(2,'Sunset Stage', 2, 200, 'https://example.com/sunset.jpg', 'Open-air stage ideal for golden hour performances'),
(3,'Main Vibe', 3, 500, 'https://example.com/mainvibe.jpg', 'Central hub for headliners'),
(4,'Bass Jungle', 4, 350, 'https://example.com/bassjungle.jpg', 'Underground electronic beats stage'),
(5,'The Dome', 5, 400, 'https://example.com/dome.jpg', 'Geodesic dome with immersive visuals'),
(6,'Sonic Bloom', 6, 250, 'https://example.com/sonicbloom.jpg', 'Floral-themed stage for indie acts'),
(7,'Harmony Hall', 7, 300, 'https://example.com/harmony.jpg', 'Classic architecture with orchestral sets'),
(8,'Moonlight Deck', 8, 150, 'https://example.com/moondeck.jpg', 'Chill vibe under the stars'),
(9,'Firefly Stage', 9, 180, 'https://example.com/firefly.jpg', 'Surrounded by glowing lanterns'),
(10,'Zenith Plaza', 10, 420, 'https://example.com/zenith.jpg', 'Wide open space for dancing'),
(11,'Aurora Grounds', 1, 275, 'https://example.com/aurora.jpg', 'Northern lights-inspired visuals'),
(12,'Electric Forest', 2, 360, 'https://example.com/electricforest.jpg', 'Surreal woods with LED trees'),
(13,'Radiance Square', 3, 310, 'https://example.com/radiance.jpg', 'Luminous atmosphere for pop acts'),
(14,'Fusion Bay', 4, 290, 'https://example.com/fusion.jpg', 'Mix of genres by the water'),
(15,'Cosmic Cove', 5, 170, 'https://example.com/cosmic.jpg', 'Galactic theme and laser shows'),
(16,'Neon Nest', 6, 320, 'https://example.com/neon.jpg', 'Bright lights and synth-heavy acts'),
(17,'The Drop', 7, 450, 'https://example.com/drop.jpg', 'Bass-heavy and high energy drops'),
(18,'Wavefront', 8, 240, 'https://example.com/wavefront.jpg', 'By the ocean with rhythmic performances'),
(19,'Pulse Point', 9, 220, 'https://example.com/pulse.jpg', 'Heart of the festival’s EDM scene'),
(20,'Nightfall Stage', 10, 380, 'https://example.com/nightfall.jpg', 'Twilight ambiance and mellow grooves'),
(21,'Infinity Hall', 1, 330, 'https://example.com/infinity.jpg', 'Loop visuals and experimental sets'),
(22,'Twilight Arena', 2, 200, 'https://example.com/twilight.jpg', 'Ambient lighting and soft beats'),
(23,'Skyline Beats', 3, 270, 'https://example.com/skyline.jpg', 'City views and rooftop vibe'),
(24,'Velocity Hall', 4, 310, 'https://example.com/velocity.jpg', 'Fast-paced techno and visuals'),
(25,'Groove Garden', 5, 180, 'https://example.com/groove.jpg', 'Relaxed groove with floral decor'),
(26,'Tempo Terrace', 6, 260, 'https://example.com/tempo.jpg', 'Progressive rhythms in the open air'),
(27,'Phoenix Pit', 7, 150, 'https://example.com/phoenix.jpg', 'Fiery theme with dramatic staging'),
(28'Siren Stage', 8, 190, 'https://example.com/siren.jpg', 'Mystical soundscapes and effects'),
(29,'Cloud Nine', 9, 170, 'https://example.com/cloud.jpg', 'Dreamy acts with aerial views'),
(30,'The Spark', 10, 140, 'https://example.com/spark.jpg', 'Small stage for breakout artists');

--10 equipment
INSERT INTO Equipment (equip_name, image, image_caption) VALUES 
('Audio Mixer X32', 'https://example.com/images/audio-mixer.jpg', '32-channel digital audio mixer for live sound'),
('Stage Light Beam 200', 'https://example.com/images/stage-light.jpg', 'High-intensity moving head beam light'),
('Wireless Mic Kit', 'https://example.com/images/wireless-mic.jpg', 'Complete wireless microphone set with receiver'),
('Smoke Machine FX1000', 'https://example.com/images/smoke-machine.jpg', 'Professional smoke machine for visual effects'),
('LED Wall Panel', 'https://example.com/images/led-wall.jpg', 'Modular LED video panel for visual displays'),
('Stage Truss System', 'https://example.com/images/stage-truss.jpg', 'Aluminum truss for lighting and rigging'),
('Bass Amplifier 800W', 'https://example.com/images/bass-amp.jpg', 'High-powered bass amp for live performance'),
('Monitor Speaker Pro', 'https://example.com/images/monitor-speaker.jpg', 'Stage monitor for musician feedback'),
('Power Generator 30kW', 'https://example.com/images/power-generator.jpg', 'Backup power generator for uninterrupted performance'),
('Cable Snake 32-Channel', 'https://example.com/images/cable-snake.jpg', 'Audio multicore cable for connecting stage gear');
 
--50 events
INSERT INTO Event_P (event_id, festival_id, stage_id, start_time, end_time, festival_day, image, image_caption) VALUES
(1, 2018, 1, '2018-06-10 12:00:00', '2018-06-10 16:00:00', 1, 'https://example.com/event1.jpg', 'First event of the summer festival'),
(2, 2018, 2, '2018-06-10 13:30:00', '2018-06-10 17:30:00', 1, 'https://example.com/event2.jpg', 'Jazz rhythms on the second stage'),
(3, 2018, 3, '2018-06-11 14:00:00', '2018-06-11 18:00:00', 2, 'https://example.com/event3.jpg', 'Rock hits in the afternoon'),
(4, 2018, 1, '2018-06-11 15:00:00', '2018-06-11 19:00:00', 2, 'https://example.com/event4.jpg', 'Chill vibes by the main stage'),
(5, 2018, 2, '2018-06-12 12:30:00', '2018-06-12 16:30:00', 3, 'https://example.com/event5.jpg', 'Electronic beats under the sky'),
(6, 2018, 3, '2018-06-12 14:00:00', '2018-06-12 18:00:00', 3, 'https://example.com/event6.jpg', 'Indie folk melodies at sunset'),
(7, 2018, 3, '2018-06-13 13:30:00', '2018-06-13 17:30:00', 4, 'https://example.com/event7.jpg', 'Pop stars take the stage'),
(8, 2018, 1, '2018-06-13 15:00:00', '2018-06-13 19:00:00', 4, 'https://example.com/event8.jpg', 'Afternoon set by the main arena'),
(9, 2018, 2, '2018-06-14 12:00:00', '2018-06-14 16:00:00', 5, 'https://example.com/event9.jpg', 'Bringing the heat with high-energy tracks'),
(10, 2018, 1, '2018-06-14 14:00:00', '2018-06-14 18:00:00', 5, 'https://example.com/event10.jpg', 'The grand finale of the festival'),
(11, 2019, 4, '2019-07-05 12:00:00', '2019-07-05 16:00:00', 1, 'https://example.com/event11.jpg', 'Opening day of the 2019 festival'),
(12, 2019, 30, '2019-07-05 13:30:00', '2019-07-05 17:30:00', 1, 'https://example.com/event12.jpg', 'Smooth jazz under the stars'),
(13, 2019, 4, '2019-07-06 14:00:00', '2019-07-06 18:00:00', 2, 'https://example.com/event13.jpg', 'Rock bands heating up the night'),
(14, 2019, 5, '2019-07-06 15:00:00', '2019-07-06 19:00:00', 2, 'https://example.com/event14.jpg', 'Alternative hits and epic vibes'),
(15, 2019, 6, '2019-07-07 12:30:00', '2019-07-07 16:30:00', 3, 'https://example.com/event15.jpg', 'Dance music and fun with friends'),
(16, 2019, 4, '2019-07-07 14:00:00', '2019-07-07 18:00:00', 3, 'https://example.com/event16.jpg', 'Funky beats to end the day'),
(17, 2020, 7, '2020-08-01 13:00:00', '2020-08-01 17:00:00', 1, 'https://example.com/event17.jpg', 'Virtual festival set with a twist'),
(18, 2020, 8, '2020-08-01 14:30:00', '2020-08-01 18:30:00', 1, 'https://example.com/event18.jpg', 'Live set from the outdoor stage'),
(19, 2020, 29, '2020-08-02 12:00:00', '2020-08-02 16:00:00', 2, 'https://example.com/event19.jpg', 'Punk rock and raw energy'),
(20, 2020, 7, '2020-08-02 13:30:00', '2020-08-02 17:30:00', 2, 'https://example.com/event20.jpg', 'Indie vibes in a cozy space'),
(21, 2020, 8, '2020-08-03 12:00:00', '2020-08-03 16:00:00', 3, 'https://example.com/event21.jpg', 'Classical music fills the air'),
(22, 2020, 9, '2020-08-03 14:00:00', '2020-08-03 18:00:00', 3, 'https://example.com/event22.jpg', 'Ambient soundscapes from talented DJs'),
(23, 2021, 10, '2021-06-20 12:00:00', '2021-06-20 16:00:00', 1, 'https://example.com/event23.jpg', 'New beginnings after lockdown'),
(24, 2021, 11, '2021-06-20 13:30:00', '2021-06-20 17:30:00', 1, 'https://example.com/event24.jpg', 'Live bands and local artists perform'),
(25, 2021, 12, '2021-06-21 12:00:00', '2021-06-21 16:00:00', 2, 'https://example.com/event25.jpg', 'Pop and rock performances on the second day'),
(26, 2021, 10, '2021-06-21 14:30:00', '2021-06-21 18:30:00', 2, 'https://example.com/event26.jpg', 'Electronic beats under the stars'),
(27, 2022, 11, '2022-07-11 12:00:00', '2022-07-11 16:00:00', 1, 'https://example.com/event27.jpg', 'High-energy day of performances'),
(28, 2022, 12, '2022-07-11 13:30:00', '2022-07-11 17:30:00', 1, 'https://example.com/event28.jpg', 'Incredible jazz fusion by local musicians'),
(29, 2022, 10, '2022-07-12 14:00:00', '2022-07-12 18:00:00', 2, 'https://example.com/event29.jpg', 'Acoustic music and indie performances'),
(30, 2022, 11, '2022-07-12 15:30:00', '2022-07-12 19:30:00', 2, 'https://example.com/event30.jpg', 'Main stage acts and thrilling crowds'),
(31, 2022, 13, '2022-07-13 12:00:00', '2022-07-13 16:00:00', 3, 'https://example.com/event31.jpg', 'Rock band kicks off the final day'),
(32, 2022, 12, '2022-07-13 13:30:00', '2022-07-13 17:30:00', 3, 'https://example.com/event32.jpg', 'Classical set in the open-air theater'),
(33, 2023, 27, '2023-05-15 12:00:00', '2023-05-15 16:00:00', 1, 'https://example.com/event33.jpg', 'Amazing vibes from all genres'),
(34, 2023, 14, '2023-05-15 13:00:00', '2023-05-15 17:00:00', 1, 'https://example.com/event34.jpg', 'Indie beats and cozy moments'),
(35, 2023, 12, '2023-05-16 14:00:00', '2023-05-16 18:00:00', 2, 'https://example.com/event35.jpg', 'Dance music all night long'),
(36, 2023, 14, '2023-05-16 15:00:00', '2023-05-16 19:00:00', 2, 'https://example.com/event36.jpg', 'Rock anthems playing into the night'),
(37, 2024, 15, '2024-06-12 12:00:00', '2024-06-12 16:00:00', 1, 'https://example.com/event37.jpg', 'Electronic set to start the fest'),
(38, 2024, 15, '2024-06-12 13:30:00', '2024-06-12 17:30:00', 1, 'https://example.com/event38.jpg', 'Pop music with a twist'),
(39, 2025, 28, '2025-07-08 12:00:00', '2025-07-08 16:00:00', 1, 'https://example.com/event39.jpg', 'Alt rock is the vibe'),
(40, 2025, 16, '2025-07-08 13:30:00', '2025-07-08 17:30:00', 1, 'https://example.com/event40.jpg', 'Indie and electro mix for an amazing night'),
(41, 2026, 17, '2026-08-20 12:00:00', '2026-08-20 16:00:00', 1, 'https://example.com/event41.jpg', 'The final day begins'),
(42, 2026, 18, '2026-08-20 13:30:00', '2026-08-20 17:30:00', 1, 'https://example.com/event42.jpg', 'Time to celebrate with music'),
(43, 2026, 19, '2026-08-21 14:00:00', '2026-08-21 18:00:00', 2, 'https://example.com/event43.jpg', 'Jazz tunes under the open sky'),
(44, 2026, 20, '2026-08-21 15:30:00', '2026-08-21 19:30:00', 2, 'https://example.com/event44.jpg', 'Indie bands playing their best'),
(45, 2026, 21, '2026-08-22 12:00:00', '2026-08-22 16:00:00', 3, 'https://example.com/event45.jpg', 'Classical symphony on the last day'),
(46, 2026, 22, '2026-08-22 13:00:00', '2026-08-22 17:00:00', 3, 'https://example.com/event46.jpg', 'The grand finale: orchestral music'),
(47, 2026, 23, '2026-08-23 14:00:00', '2026-08-23 18:00:00', 4, 'https://example.com/event47.jpg', 'Closing set of the festival'),
(48, 2026, 24, '2026-08-23 15:00:00', '2026-08-23 19:00:00', 4, 'https://example.com/event48.jpg', 'Special performances to end the fest'),
(49, 2026, 25, '2026-08-24 12:00:00', '2026-08-24 16:00:00', 5, 'https://example.com/event49.jpg', 'Final celebration day of the festival'),
(50, 2026, 26, '2026-08-24 13:30:00', '2026-08-24 17:30:00', 5, 'https://example.com/event50.jpg', 'Farewell to a wonderful year!');

-- 3 roles
INSERT INTO Role (role_name, image, image_caption) VALUES
('Auxiliary', 'https://example.com/auxiliary.jpg', 'Supporting the team in various roles'),
('Technician', 'https://example.com/technician.jpg', 'Handling technical equipment and setups'),
('Security', 'https://example.com/security.jpg', 'Ensuring the safety and security of the event');

-- 5 levels of expirience
INSERT INTO Experience (experience_level, xp, image, image_caption) VALUES
('Beginner', 1, 'https://example.com/img1.jpg', 'Just starting out'),
('Intermediate', 2, 'https://example.com/img2.jpg', 'Gaining more skills'),
('Advanced', 3, 'https://example.com/img3.jpg', 'Mastering the craft'),
('Expert', 4, 'https://example.com/img4.jpg', 'Top-tier professional'),
('Veteran', 5, 'https://example.com/img5.jpg', 'Years of experience');


---50 staff
INSERT INTO Staff (first_name, last_name, age, experience_level, role_id, image, image_caption) VALUES
('John', 'Doe', 25, 'Beginner', 1, 'https://example.com/john_doe.jpg', 'A dedicated auxiliary staff member'),
('Jane', 'Smith', 30, 'Intermediate', 2, 'https://example.com/jane_smith.jpg', 'A skilled technician with years of experience'),
('Alice', 'Johnson', 28, 'Advanced', 3, 'https://example.com/alice_johnson.jpg', 'Security team lead with advanced expertise'),
('Bob', 'Williams', 35, 'Expert', 1, 'https://example.com/bob_williams.jpg', 'Experienced auxiliary with excellent problem-solving skills'),
('Eve', 'Davis', 40, 'Veteran', 2, 'https://example.com/eve_davis.jpg', 'Technician with extensive experience in equipment setup'),
('Charlie', 'Brown', 32, 'Intermediate', 3, 'https://example.com/charlie_brown.jpg', 'Security guard with solid background'),
('Sophia', 'Martinez', 26, 'Beginner', 2, 'https://example.com/sophia_martinez.jpg', 'Technician just starting in the field'),
('Daniel', 'Taylor', 45, 'Veteran', 1, 'https://example.com/daniel_taylor.jpg', 'Experienced auxiliary staff with a rich history of roles'),
('Olivia', 'Anderson', 33, 'Advanced', 3, 'https://example.com/olivia_anderson.jpg', 'Advanced security expert'),
('Mason', 'Thomas', 29, 'Expert', 2, 'https://example.com/mason_thomas.jpg', 'Expert technician with an outstanding reputation'),
('Lucas', 'Miller', 31, 'Intermediate', 1, 'https://example.com/lucas_miller.jpg', 'Dedicated auxiliary staff member'),
('Emily', 'Garcia', 36, 'Advanced', 2, 'https://example.com/emily_garcia.jpg', 'Technician with excellent equipment handling skills'),
('Michael', 'Martinez', 27, 'Beginner', 3, 'https://example.com/michael_martinez.jpg', 'Security staff with a focus on crowd management'),
('Isabella', 'Rodriguez', 34, 'Intermediate', 1, 'https://example.com/isabella_rodriguez.jpg', 'Auxiliary staff providing general support'),
('Liam', 'Wilson', 38, 'Veteran', 3, 'https://example.com/liam_wilson.jpg', 'Veteran security with extensive event management experience'),
('Emma', 'Moore', 41, 'Expert', 2, 'https://example.com/emma_moore.jpg', 'Expert technician with high-level problem-solving skills'),
('William', 'Taylor', 28, 'Advanced', 1, 'https://example.com/william_taylor.jpg', 'Auxiliary staff with years of hands-on experience'),
('James', 'Hernandez', 33, 'Veteran', 2, 'https://example.com/james_hernandez.jpg', 'Highly experienced technician specializing in equipment setups'),
('Ava', 'Lopez', 30, 'Intermediate', 3, 'https://example.com/ava_lopez.jpg', 'Security team member with solid field experience'),
('Benjamin', 'Gonzalez', 26, 'Beginner', 1, 'https://example.com/benjamin_gonzalez.jpg', 'New auxiliary staff excited to join the team'),
('Harper', 'Jackson', 29, 'Expert', 3, 'https://example.com/harper_jackson.jpg', 'Experienced security staff member ensuring safety'),
('Mia', 'White', 32, 'Advanced', 2, 'https://example.com/mia_white.jpg', 'Technician specializing in sound systems'),
('Jack', 'Martin', 39, 'Veteran', 1, 'https://example.com/jack_martin.jpg', 'Seasoned auxiliary staff member with great communication skills'),
('Zoe', 'Lee', 31, 'Intermediate', 2, 'https://example.com/zoe_lee.jpg', 'Technician with experience in light and sound setups'),
('Noah', 'Perez', 25, 'Beginner', 3, 'https://example.com/noah_perez.jpg', 'Security staff member with basic training'),
('Mason', 'Clark', 36, 'Advanced', 1, 'https://example.com/mason_clark.jpg', 'Experienced auxiliary with solid technical knowledge'),
('Ella', 'Allen', 40, 'Expert', 2, 'https://example.com/ella_allen.jpg', 'Top-tier technician with a vast amount of event setup expertise'),
('Sebastian', 'Young', 28, 'Intermediate', 1, 'https://example.com/sebastian_young.jpg', 'Auxiliary staff with a can-do attitude'),
('Chloe', 'King', 33, 'Beginner', 2, 'https://example.com/chloe_king.jpg', 'Technician just beginning to work on sound systems'),
('Matthew', 'Scott', 44, 'Veteran', 3, 'https://example.com/matthew_scott.jpg', 'Veteran security guard with experience in crowd management'),
('Amelia', 'Baker', 27, 'Advanced', 2, 'https://example.com/amelia_baker.jpg', 'Experienced technician with a focus on video setups'),
('Oliver', 'Adams', 37, 'Intermediate', 1, 'https://example.com/oliver_adams.jpg', 'Reliable auxiliary team member with hands-on experience'),
('Harvey', 'Nelson', 29, 'Veteran', 2, 'https://example.com/harvey_nelson.jpg', 'Veteran technician with extensive knowledge of event equipment'),
('Aiden', 'Carter', 30, 'Beginner', 3, 'https://example.com/aiden_carter.jpg', 'Security team member with growing experience'),
('Lily', 'Mitchell', 35, 'Expert', 1, 'https://example.com/lily_mitchell.jpg', 'Expert auxiliary staff with exceptional customer service skills'),
('Jackson', 'Roberts', 26, 'Advanced', 3, 'https://example.com/jackson_roberts.jpg', 'Security expert with years of experience handling large crowds'),
('Grace', 'Hill', 32, 'Intermediate', 1, 'https://example.com/grace_hill.jpg', 'Auxiliary staff member with experience in logistics'),
('Ethan', 'Davis', 39, 'Veteran', 2, 'https://example.com/ethan_davis.jpg', 'Veteran technician specialized in equipment troubleshooting'),
('Scarlett', 'Evans', 28, 'Beginner', 3, 'https://example.com/scarlett_evans.jpg', 'Security staff in training with focus on event safety'),
('Luna', 'Thompson', 31, 'Intermediate', 1, 'https://example.com/luna_thompson.jpg', 'Auxiliary team member supporting with various tasks'),
('Landon', 'Walker', 34, 'Advanced', 2, 'https://example.com/landon_walker.jpg', 'Experienced technician with a background in lighting systems'),
('Avery', 'Green', 40, 'Expert', 3, 'https://example.com/avery_green.jpg', 'Expert security staff ensuring event safety'),
('Cameron', 'Harris', 45, 'Veteran', 1, 'https://example.com/cameron_harris.jpg', 'Veteran auxiliary staff providing expert support'),
('Ruby', 'Hughes', 32, 'Intermediate', 2, 'https://example.com/ruby_hughes.jpg', 'Technician with strong audio-visual experience'),
('Samuel', 'Graham', 29, 'Advanced', 3, 'https://example.com/samuel_graham.jpg', 'Advanced security staff managing event safety protocols'),
('Isaac', 'Garcia', 27, 'Beginner', 2, 'https://example.com/isaac_garcia.jpg', 'Technician with basic skills in event setups'),
('Leah', 'Bennett', 31, 'Veteran', 1, 'https://example.com/leah_bennett.jpg', 'Veteran auxiliary with a wealth of experience'),
('Mackenzie', 'Simmons', 38, 'Expert', 3, 'https://example.com/mackenzie_simmons.jpg', 'Expert security staff in charge of crowd control'),
('Nathan', 'Foster', 26, 'Intermediate', 1, 'https://example.com/nathan_foster.jpg', 'Auxiliary staff assisting in general event duties'),
('Jackie', 'Wright', 33, 'Beginner', 3, 'https://example.com/jackie_wright.jpg', 'Security staff with initial training in crowd management'),
('Joshua', 'Barker', 34, 'Advanced', 2, 'https://example.com/joshua_barker.jpg', 'Technician with solid background in equipment setup'),
('Aidan', 'Morris', 39, 'Expert', 1, 'https://example.com/aidan_morris.jpg', 'Auxiliary staff with extensive event experience'),
('Peyton', 'Curtis', 30, 'Intermediate', 3, 'https://example.com/peyton_curtis.jpg', 'Security team member with an eye for detail'),
('Addison', 'Collins', 28, 'Veteran', 2, 'https://example.com/addison_collins.jpg', 'Veteran technician specializing in lighting equipment'),
('Grayson', 'Chavez', 33, 'Expert', 1, 'https://example.com/grayson_chavez.jpg', 'Experienced auxiliary staff with top-notch organizational skills');


--150 event equipments
INSERT INTO EventEquip (equip_id, event_id, quantity) VALUES
(1, 1, 2), (2, 1, 1), (3, 1, 3),
(4, 2, 1), (5, 2, 2), (6, 2, 1),
(7, 3, 4), (8, 3, 1), (9, 3, 1),
(10, 4, 1), (1, 4, 3), (2, 4, 2),
(3, 5, 2), (4, 5, 1), (5, 5, 1),
(6, 6, 2), (7, 6, 3), (8, 6, 1),
(9, 7, 1), (10, 7, 1), (1, 7, 2),
(2, 8, 1), (3, 8, 2), (4, 8, 1),
(5, 9, 2), (6, 9, 1), (7, 9, 2),
(8, 10, 1), (9, 10, 1), (10, 10, 1),

-- Equipment for Events 11-16 (2019 festival)
(1, 11, 3), (2, 11, 2), (3, 11, 4),
(4, 12, 1), (5, 12, 1), (6, 12, 2),
(7, 13, 3), (8, 13, 1), (9, 13, 1),
(10, 14, 1), (1, 14, 2), (2, 14, 1),
(3, 15, 2), (4, 15, 1), (5, 15, 1),
(6, 16, 2), (7, 16, 2), (8, 16, 1),

-- Equipment for Events 17-22 (2020 festival)
(1, 17, 2), (2, 17, 1), (3, 17, 3),
(4, 18, 1), (5, 18, 2), (6, 18, 1),
(7, 19, 4), (8, 19, 1), (9, 19, 1),
(10, 20, 1), (1, 20, 3), (2, 20, 2),
(3, 21, 2), (4, 21, 1), (5, 21, 1),
(6, 22, 2), (7, 22, 3), (8, 22, 1),

-- Equipment for Events 23-26 (2021 festival)
(1, 23, 3), (2, 23, 2), (3, 23, 4),
(4, 24, 1), (5, 24, 1), (6, 24, 2),
(7, 25, 3), (8, 25, 1), (9, 25, 1),
(10, 26, 1), (1, 26, 2), (2, 26, 1),

-- Equipment for Events 27-32 (2022 festival)
(3, 27, 2), (4, 27, 1), (5, 27, 1),
(6, 28, 2), (7, 28, 2), (8, 28, 1),
(9, 29, 1), (10, 29, 1), (1, 29, 2),
(2, 30, 1), (3, 30, 2), (4, 30, 1),
(5, 31, 2), (6, 31, 1), (7, 31, 2),
(8, 32, 1), (9, 32, 1), (10, 32, 1),

-- Equipment for Events 33-36 (2023 festival)
(1, 33, 3), (2, 33, 2), (3, 33, 4),
(4, 34, 1), (5, 34, 1), (6, 34, 2),
(7, 35, 3), (8, 35, 1), (9, 35, 1),
(10, 36, 1), (1, 36, 2), (2, 36, 1),

-- Equipment for Events 37-38 (2024 festival)
(3, 37, 2), (4, 37, 1), (5, 37, 1),
(6, 38, 2), (7, 38, 2), (8, 38, 1),

-- Equipment for Events 39-50 (2025-2026 festivals)
(9, 39, 1), (10, 39, 1), (1, 39, 2),
(2, 40, 1), (3, 40, 2), (4, 40, 1),
(5, 41, 2), (6, 41, 1), (7, 41, 2),
(8, 42, 1), (9, 42, 1), (10, 42, 1),
(1, 43, 3), (2, 43, 2), (3, 43, 4),
(4, 44, 1), (5, 44, 1), (6, 44, 2),
(7, 45, 3), (8, 45, 1), (9, 45, 1),
(10, 46, 1), (1, 46, 2), (2, 46, 1),
(3, 47, 2), (4, 47, 1), (5, 47, 1),
(6, 48, 2), (7, 48, 2), (8, 48, 1),
(9, 49, 1), (10, 49, 1), (1, 49, 2),
(2, 50, 1), (3, 50, 2), (4, 50, 1);


