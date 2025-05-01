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

INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Jeffrey', 'Wilson', 70, '(194)892-4115');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Eric', 'Mayer', 40, '688-477-9361');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Stephanie', 'Zimmerman', 64, '(202)907-2507x49318');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Jason', 'Richardson', 42, '+1-667-879-9368x47358');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Brandon', 'Sullivan', 18, '001-473-288-1820');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Christopher', 'Gutierrez', 32, '+1-101-399-1615x109');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Ashley', 'Gibbs', 48, '(206)967-1168x822');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Amber', 'Schultz', 47, '(696)116-1162');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Susan', 'Barnett', 41, '0689717855');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Alyssa', 'Knox', 66, '3217300869');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Kyle', 'Stephens', 69, '559.026.2281x23793');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Carl', 'Jacobs', 35, '+1-057-877-1086x408');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Jessica', 'Goodwin', 46, '001-413-525-6012x3098');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('James', 'Jensen', 38, '(756)256-6272x85232');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Michael', 'Miller', 53, '001-735-400-0250x402');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Andrew', 'Stokes', 29, '001-205-930-6046x0925');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Christina', 'Glenn', 48, '9555729814');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Brianna', 'Mullen', 24, '9255445769');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Michael', 'Owens', 34, '0404943885');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Daniel', 'West', 24, '001-332-871-1587');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Natalie', 'Pollard', 64, '001-471-965-9342');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Patrick', 'Reese', 22, '125.023.9491');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Sara', 'Perez', 55, '(782)092-8051');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Brittany', 'Walls', 67, '+1-099-734-0956');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Bradley', 'Stewart', 32, '(965)708-6930');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Breanna', 'Washington', 50, '618-498-3478x97844');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Stephanie', 'Rose', 61, '(708)086-2591');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Ryan', 'Cruz', 67, '6650300891');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Monica', 'Wilson', 54, '(417)417-2532x5731');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Catherine', 'Walls', 25, '775-159-1795x330');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Dennis', 'Thomas', 35, '509-322-7175x4203');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Anthony', 'Thornton', 22, '(125)030-0680');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('John', 'Soto', 62, '001-296-451-3758x0660');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Joseph', 'Wilson', 20, '(922)116-6972x845');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Kelly', 'Jensen', 70, '(323)082-7594');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Dana', 'Mcgee', 59, '551-590-0422x94568');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Amber', 'Brown', 37, '(546)118-7755x1717');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Zachary', 'Smith', 46, '482-983-8168x6447');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Rebecca', 'Weiss', 51, '001-845-642-8071');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Dana', 'Scott', 22, '+1-891-634-8967x69930');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Devin', 'Forbes', 38, '(207)436-1511x05026');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Cory', 'Hoffman', 43, '+1-305-760-8116x050');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Stephanie', 'Chang', 36, '8185011695');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('John', 'Garcia', 55, '(431)953-9852x2509');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Charles', 'Duarte', 56, '8298215323');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('David', 'Johnson', 29, '0034855909');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Mary', 'Walker', 51, '8957740382');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Colin', 'Huff', 46, '(573)547-1214x18927');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Jay', 'Thompson', 44, '236.599.2719');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Elizabeth', 'Hall', 49, '425-120-2983');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('James', 'Hale', 32, '033-744-3075');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Scott', 'Moore', 19, '800-019-9226x06695');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Jennifer', 'Kline', 67, '076-033-4523x53267');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Terri', 'Kelley', 51, '056-246-2926x48022');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('James', 'Owens', 16, '639-683-7359');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Lee', 'Anderson', 21, '824-345-4487');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Ann', 'Parsons', 62, '(347)723-7457x92813');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Aaron', 'Keller', 69, '(578)034-2954');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Mark', 'Brennan', 41, '091.634.5792x302');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Kimberly', 'Morris', 61, '001-610-935-2337x6960');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Christopher', 'Smith', 68, '+1-776-582-3694x0224');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Linda', 'Jackson', 66, '448-518-3216');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Joshua', 'Harris', 58, '+1-644-659-5140x7043');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Angela', 'Grimes', 56, '260.583.5288');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Christopher', 'Shaw', 16, '566.763.3739x060');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Marie', 'Martinez', 55, '001-996-297-9397x037');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Brittney', 'Ford', 47, '(349)263-5110x873');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Mario', 'Phillips', 68, '+1-125-609-7670x172');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Courtney', 'Nunez', 37, '815.659.3877x8408');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Justin', 'Johnson', 31, '(428)212-9188x96644');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Alan', 'Singleton', 62, '3513853344');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Charles', 'Daugherty', 36, '001-516-425-8582x684');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Lawrence', 'Levine', 61, '+1-583-000-2379x318');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Desiree', 'Mitchell', 20, '4714285124');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Krista', 'Wright', 28, '001-061-965-3870');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Pamela', 'Black', 52, '+1-510-562-3762x5425');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Jordan', 'Brown', 30, '(048)606-4635x2219');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Paul', 'Campbell', 31, '(199)317-3089');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Jeremiah', 'Tapia', 67, '140-292-6395');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Renee', 'Patel', 25, '+1-904-560-0715x427');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Pamela', 'Erickson', 67, '2821691972');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Rodney', 'Jackson', 50, '484-185-8398');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Brett', 'Mccarthy', 44, '(520)351-9230x310');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Thomas', 'Johnson', 21, '075-227-5868x8091');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Christopher', 'Garcia', 21, '(182)336-6706x36094');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Ian', 'Anderson', 36, '+1-017-563-6090x61435');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Samuel', 'Barry', 48, '+1-577-389-3055x50824');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Michael', 'Gutierrez', 47, '001-660-648-8709x1662');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Alison', 'Porter', 22, '926-100-1575x175');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Joseph', 'Reynolds', 35, '155-170-2840');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Heidi', 'Mcintosh', 51, '067.537.5100');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Frank', 'Eaton', 34, '(602)906-1126x486');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Alexandria', 'Harris', 61, '019.126.3340');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Edward', 'Lindsey', 23, '915-587-5408');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Kristina', 'Lopez', 51, '001-756-851-2502');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Tonya', 'Stephens', 37, '764-303-9213');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Howard', 'Lin', 68, '868-483-3969');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Jennifer', 'Schaefer', 50, '+1-024-894-5174x46660');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Janet', 'Moore', 29, '689-671-4543x910');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Katherine', 'Anderson', 67, '278.526.4619x8537');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Martha', 'Maldonado', 54, '001-710-979-5194x26418');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Julie', 'Warren', 51, '(604)876-4759x3824');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Kim', 'Lindsey', 53, '(045)229-6111x33060');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Melissa', 'Fletcher', 34, '6528222239');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Andrew', 'Murray', 44, '810-250-5927x6367');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Rebecca', 'Gonzalez', 21, '5357345240');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Robert', 'James', 54, '1609753513');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Paul', 'Cruz', 67, '079-703-4148x9267');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Alicia', 'Garcia', 40, '692-165-8735x5645');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Melissa', 'Patel', 36, '(926)902-9062x200');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Rachel', 'English', 52, '(637)636-3769x14485');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Alex', 'Burgess', 31, '914.878.6742x3852');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('John', 'Foster', 34, '(576)294-8155');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Emily', 'Rollins', 27, '607-599-4497');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Teresa', 'Stanley', 28, '(622)358-3324');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Jonathan', 'Jones', 68, '064-488-8553x6208');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Kathleen', 'Willis', 27, '084-237-5945x99246');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Joyce', 'Hodge', 18, '(457)325-8576x75712');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Kathleen', 'Brown', 55, '001-076-607-5415x1150');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Lisa', 'Steele', 58, '209.471.1220');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('John', 'Mckinney', 32, '820.195.5013x1870');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Penny', 'Stanley', 46, '(417)304-2814');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Carol', 'Beard', 20, '738-640-1400');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Keith', 'George', 21, '688.181.7187');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Michael', 'Howard', 59, '927-117-6968x1473');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Maria', 'Evans', 64, '+1-180-260-6661x7972');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Darlene', 'King', 24, '(584)197-2076');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Andrew', 'Roman', 25, '(823)570-3934x261');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Savannah', 'Foley', 18, '511.496.3562x34375');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Charlotte', 'Morgan', 69, '+1-269-471-1801x320');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Kevin', 'Taylor', 21, '(099)813-9981');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Lori', 'Pace', 60, '852.654.7604');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Jacqueline', 'Rivera', 69, '(960)271-4278x7890');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Melissa', 'Morrison', 50, '408.993.3188x6841');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Randy', 'Morales', 59, '7547063812');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Paula', 'Evans', 41, '001-737-813-2716');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Lisa', 'Cunningham', 69, '793.782.5278');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Joe', 'Reynolds', 61, '487.089.8407x61657');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Joseph', 'Jackson', 49, '656.784.6612');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Donald', 'Harper', 33, '864-753-0481x0777');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Katherine', 'Schmidt', 49, '576.070.8673');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Rhonda', 'Huff', 67, '413-145-6208');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Deborah', 'Stark', 31, '+1-763-778-5707x4270');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Jonathon', 'Turner', 70, '001-666-609-7592x94506');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Rebecca', 'Rose', 29, '(379)168-6023x73245');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Kristine', 'Lee', 59, '(980)250-7003x003');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Jonathan', 'Vazquez', 53, '(574)485-2911x894');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Andrew', 'Harper', 68, '001-886-016-4195x3843');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Melissa', 'Werner', 42, '+1-778-514-2963x54603');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Sherry', 'Petersen', 53, '(234)500-7627');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Jay', 'Huang', 33, '6777111312');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Christine', 'Solomon', 44, '193.442.1761');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Donna', 'Lynch', 47, '0992518536');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Joseph', 'Craig', 58, '+1-286-937-6409x2627');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Diane', 'Smith', 57, '001-325-838-6126x951');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Sabrina', 'Jackson', 60, '658.219.7296x687');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Molly', 'Rivers', 66, '001-318-453-5749x2208');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Joel', 'Morrow', 38, '(266)237-5825x7173');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Joanna', 'Garrison', 21, '001-845-670-8869x774');
INSERT INTO Visitor (first_name, last_name, age, phone) VALUES ('Christopher', 'Reynolds', 36, '904-432-9431');

INSERT INTO Ticket_Class (ticket_type) VALUES
('General'),
('VIP'),
('Premium'),
('Backstage');

INSERT INTO PayedWith (pay_method) VALUES
('Credit'),
('Debit'),
('Cash'),
('Paypal');

-- ARTIST TABLE (90 artists with images)
INSERT INTO Artist (artist_id, first_name, last_name, stage_name, birthDATE, website, insta, participations, image, image_caption) VALUES
-- The Killers members
(1, 'Brandon', 'Flowers', 'Brandon Flowers', '1981-06-21', 'brandonflowersmusic.com', 'brandonflowers', 5, 'https://example.com/artists/brandon_flowers.jpg', 'Lead singer of The Killers'),
(2, 'Dave', 'Keuning', 'Dave Keuning', '1976-03-28', NULL, 'davekeuning', 3, 'https://example.com/artists/dave_keuning.jpg', 'Guitarist for The Killers'),
(3, 'Mark', 'Stoermer', 'Mark Stoermer', '1977-06-28', NULL, 'markstoermer', 4, 'https://example.com/artists/mark_stoermer.jpg', 'Bassist for The Killers'),
(4, 'Ronnie', 'Vannucci Jr.', 'Ronnie Vannucci', '1976-02-15', NULL, 'ronnievannucci', 5, 'https://example.com/artists/ronnie_vannucci.jpg', 'Drummer for The Killers'),

-- Arctic Monkeys members
(5, 'Alex', 'Turner', 'Alex Turner', '1986-01-06', NULL, 'alexjamesturner', 6, 'https://example.com/artists/alex_turner.jpg', 'Lead singer of Arctic Monkeys'),
(6, 'Jamie', 'Cook', 'Jamie Cook', '1985-07-08', NULL, 'jamiecook', 6, 'https://example.com/artists/jamie_cook.jpg', 'Guitarist for Arctic Monkeys'),
(7, 'Nick', 'O\'Malley', 'Nick O\'Malley', '1985-07-05', NULL, 'nickomalley', 4, 'https://example.com/artists/nick_omalley.jpg', 'Bassist for Arctic Monkeys'),
(8, 'Matt', 'Helders', 'Matt Helders', '1986-05-07', NULL, 'matthelders', 6, 'https://example.com/artists/matt_helders.jpg', 'Drummer for Arctic Monkeys'),

-- Foo Fighters members
(9, 'Dave', 'Grohl', 'Dave Grohl', '1969-01-14', 'davegrohl.com', 'davegrohl', 8, 'https://example.com/artists/dave_grohl.jpg', 'Foo Fighters frontman'),
(10, 'Nate', 'Mendel', 'Nate Mendel', '1968-12-02', NULL, 'natemendel', 7, 'https://example.com/artists/nate_mendel.jpg', 'Foo Fighters bassist'),
(11, 'Pat', 'Smear', 'Pat Smear', '1959-08-05', NULL, 'patsmear', 5, 'https://example.com/artists/pat_smear.jpg', 'Foo Fighters guitarist'),
(12, 'Chris', 'Shiflett', 'Chris Shiflett', '1971-05-06', 'chris-shiflett.com', 'chrispshiflett', 6, 'https://example.com/artists/chris_shiflett.jpg', 'Foo Fighters lead guitarist'),
(13, 'Rami', 'Jaffee', 'Rami Jaffee', '1969-03-11', NULL, 'ramijaffee', 4, 'https://example.com/artists/rami_jaffee.jpg', 'Foo Fighters keyboardist'),

-- Florence + Machine members
(14, 'Florence', 'Welch', 'Florence Welch', '1986-08-28', 'florenceandthemachine.net', 'florence', 4, 'https://example.com/artists/florence_welch.jpg', 'Florence + Machine lead singer'),
(15, 'Isabella', 'Summers', 'Isabella Summers', '1980-12-03', NULL, 'isabellamachine', 4, 'https://example.com/artists/isabella_summers.jpg', 'Florence + Machine keyboardist'),

-- Tame Impala members
(16, 'Kevin', 'Parker', 'Kevin Parker', '1986-01-20', 'tameimpala.com', 'kevinparker', 5, 'https://example.com/artists/kevin_parker.jpg', 'Tame Impala multi-instrumentalist'),
(17, 'Dominic', 'Simper', 'Dominic Simper', NULL, NULL, 'dominicsimper', 3, 'https://example.com/artists/dominic_simper.jpg', 'Tame Impala member'),
(18, 'Jay', 'Watson', 'Jay Watson', '1987-06-25', NULL, 'jaywatsonmusic', 4, 'https://example.com/artists/jay_watson.jpg', 'Tame Impala multi-instrumentalist'),

-- The Strokes members
(19, 'Julian', 'Casablancas', 'Julian Casablancas', '1978-08-23', 'thevoidz.com', 'juliancasablancas', 3, 'https://example.com/artists/julian_casablancas.jpg', 'The Strokes lead singer'),
(20, 'Nick', 'Valensi', 'Nick Valensi', '1981-01-16', NULL, 'nickvalensi', 3, 'https://example.com/artists/nick_valensi.jpg', 'The Strokes guitarist'),
(21, 'Albert', 'Hammond Jr.', 'Albert Hammond Jr.', '1980-04-09', 'alberthammondjr.com', 'alberthammondjr', 3, 'https://example.com/artists/albert_hammond_jr.jpg', 'The Strokes guitarist'),

-- Red Hot Chili Peppers members
(22, 'Anthony', 'Kiedis', 'Anthony Kiedis', '1962-11-01', NULL, 'anthonykiedis', 7, 'https://example.com/artists/anthony_kiedis.jpg', 'RHCP lead singer'),
(23, 'Flea', 'Balzary', 'Flea', '1962-10-16', 'flea', 7, 'https://example.com/artists/flea.jpg', 'RHCP bassist'),
(24, 'Chad', 'Smith', 'Chad Smith', '1961-10-25', NULL, 'chadsmithofficial', 7, 'https://example.com/artists/chad_smith.jpg', 'RHCP drummer'),
(25, 'John', 'Frusciante', 'John Frusciante', '1970-03-05', NULL, 'johnfrusciante', 5, 'https://example.com/artists/john_frusciante.jpg', 'RHCP guitarist'),

-- Muse members
(26, 'Matt', 'Bellamy', 'Matt Bellamy', '1978-06-09', NULL, 'mattbellamy', 6, 'https://example.com/artists/matt_bellamy.jpg', 'Muse lead singer'),
(27, 'Chris', 'Wolstenholme', 'Chris Wolstenholme', '1978-12-02', NULL, 'wolstenholme', 6, 'https://example.com/artists/chris_wolstenholme.jpg', 'Muse bassist'),
(28, 'Dominic', 'Howard', 'Dominic Howard', '1977-12-07', NULL, 'domhoward', 6, 'https://example.com/artists/dominic_howard.jpg', 'Muse drummer'),

-- LCD Soundsystem members
(29, 'James', 'Murphy', 'James Murphy', '1970-02-04', 'dfa.com', 'jamesmurphydfa', 4, 'https://example.com/artists/james_murphy.jpg', 'LCD Soundsystem frontman'),
(30, 'Nancy', 'Whang', 'Nancy Whang', '1979-06-28', NULL, 'nancywhang', 3, 'https://example.com/artists/nancy_whang.jpg', 'LCD Soundsystem keyboardist'),
(31, 'Pat', 'Mahoney', 'Pat Mahoney', '1975-07-02', NULL, 'patmahoney', 3, 'https://example.com/artists/pat_mahoney.jpg', 'LCD Soundsystem drummer'),

-- The National members
(32, 'Matt', 'Berninger', 'Matt Berninger', '1971-07-13', NULL, 'mattberninger', 5, 'https://example.com/artists/matt_berninger.jpg', 'The National lead singer'),
(33, 'Aaron', 'Dessner', 'Aaron Dessner', '1976-04-23', NULL, 'aarondessner', 5, 'https://example.com/artists/aaron_dessner.jpg', 'The National guitarist'),
(34, 'Bryce', 'Dessner', 'Bryce Dessner', '1976-04-23', NULL, 'brycedessner', 5, 'https://example.com/artists/bryce_dessner.jpg', 'The National guitarist'),

-- Vampire Weekend members
(35, 'Ezra', 'Koenig', 'Ezra Koenig', '1984-04-08', NULL, 'ezrak', 3, 'https://example.com/artists/ezra_koenig.jpg', 'Vampire Weekend lead singer'),
(36, 'Chris', 'Baio', 'Chris Baio', '1984-09-29', NULL, 'cbaio', 3, 'https://example.com/artists/chris_baio.jpg', 'Vampire Weekend bassist'),
(37, 'Chris', 'Tomson', 'Chris Tomson', '1985-05-14', NULL, 'battletomson', 3, 'https://example.com/artists/chris_tomson.jpg', 'Vampire Weekend drummer'),

-- Arcade Fire members
(38, 'Win', 'Butler', 'Win Butler', '1980-04-14', NULL, 'winbutler', 4, 'https://example.com/artists/win_butler.jpg', 'Arcade Fire lead singer'),
(39, 'Régine', 'Chassagne', 'Régine Chassagne', '1977-08-18', NULL, 'reginechassagne', 4, 'https://example.com/artists/regine_chassagne.jpg', 'Arcade Fire multi-instrumentalist'),
(40, 'Richard', 'Reed Parry', 'Richard Reed Parry', '1977-10-04', NULL, 'richardreedparry', 4, 'https://example.com/artists/richard_reed_parry.jpg', 'Arcade Fire multi-instrumentalist'),

-- The Black Keys members
(41, 'Dan', 'Auerbach', 'Dan Auerbach', '1979-05-14', 'danauerbach.com', 'danauerbach', 5, 'https://example.com/artists/dan_auerbach.jpg', 'The Black Keys guitarist'),
(42, 'Patrick', 'Carney', 'Patrick Carney', '1980-04-15', NULL, 'patrickcarney', 5, 'https://example.com/artists/patrick_carney.jpg', 'The Black Keys drummer'),

-- Phoenix members
(43, 'Thomas', 'Mars', 'Thomas Mars', '1976-09-19', NULL, 'thomas__mars', 5, 'https://example.com/artists/thomas_mars.jpg', 'Phoenix lead singer'),
(44, 'Christian', 'Mazzalai', 'Christian Mazzalai', '1973-12-05', NULL, 'christianmazzalai', 5, 'https://example.com/artists/christian_mazzalai.jpg', 'Phoenix guitarist'),
(45, 'Laurent', 'Brancowitz', 'Laurent Brancowitz', '1975-05-21', NULL, 'laurentbrancowitz', 5, 'https://example.com/artists/laurent_brancowitz.jpg', 'Phoenix guitarist'),

-- Interpol members
(46, 'Paul', 'Banks', 'Paul Banks', '1978-05-03', NULL, 'paulbanksnyc', 3, 'https://example.com/artists/paul_banks.jpg', 'Interpol lead singer'),
(47, 'Daniel', 'Kessler', 'Daniel Kessler', '1974-03-17', NULL, 'danielkessler', 3, 'https://example.com/artists/daniel_kessler.jpg', 'Interpol guitarist'),
(48, 'Sam', 'Fogarino', 'Sam Fogarino', '1968-06-16', NULL, 'samfogarino', 3, 'https://example.com/artists/sam_fogarino.jpg', 'Interpol drummer'),

-- The 1975 members
(49, 'Matty', 'Healy', 'Matty Healy', '1989-04-08', NULL, 'trumanblack', 5, 'https://example.com/artists/matty_healy.jpg', 'The 1975 lead singer'),
(50, 'Adam', 'Hann', 'Adam Hann', '1986-05-20', NULL, 'adamhann', 5, 'https://example.com/artists/adam_hann.jpg', 'The 1975 guitarist'),
(51, 'Ross', 'MacDonald', 'Ross MacDonald', '1988-12-21', NULL, 'rossmacdonald', 5, 'https://example.com/artists/ross_macdonald.jpg', 'The 1975 bassist'),
(52, 'George', 'Daniel', 'George Daniel', '1989-03-19', NULL, 'georgedaniel', 5, 'https://example.com/artists/george_daniel.jpg', 'The 1975 drummer'),

-- Queens of the Stone Age members
(53, 'Josh', 'Homme', 'Josh Homme', '1973-05-17', NULL, 'joshhomme', 5, 'https://example.com/artists/josh_homme.jpg', 'QOTSA lead singer'),
(54, 'Troy', 'Van Leeuwen', 'Troy Van Leeuwen', '1970-01-05', NULL, 'troyvanleeuwen', 4, 'https://example.com/artists/troy_van_leeuwen.jpg', 'QOTSA guitarist'),
(55, 'Michael', 'Shuman', 'Michael Shuman', '1986-05-02', NULL, 'michael_shuman', 4, 'https://example.com/artists/michael_shuman.jpg', 'QOTSA bassist'),
(56, 'Dean', 'Fertita', 'Dean Fertita', '1970-05-06', NULL, 'deanfertita', 3, 'https://example.com/artists/dean_fertita.jpg', 'QOTSA keyboardist'),
(57, 'Jon', 'Theodore', 'Jon Theodore', '1973-03-03', NULL, 'jontheodore', 3, 'https://example.com/artists/jon_theodore.jpg', 'QOTSA drummer'),

-- Additional notable artists who collaborate with these bands
(58, 'Jack', 'White', 'Jack White', '1975-07-09', 'jackwhiteiii.com', 'officialjackwhite', 4, 'https://example.com/artists/jack_white.jpg', 'The White Stripes frontman'),
(59, 'St. Vincent', 'Clark', 'St. Vincent', '1982-09-28', 'ilovestvincent.com', 'st_vincent', 3, 'https://example.com/artists/st_vincent.jpg', 'Innovative guitarist and singer'),
(60, 'Thom', 'Yorke', 'Thom Yorke', '1968-10-07', 'radiohead.com', 'thomyorke', 4, 'https://example.com/artists/thom_yorke.jpg', 'Radiohead lead singer'),

-- Pop artists (61-90)
(61, 'Taylor', 'Swift', 'Taylor Swift', '1989-12-13', 'taylorswift.com', 'taylorswift', 8, 'https://example.com/artists/taylor_swift.jpg', 'Global pop superstar'),
(62, 'Ariana', 'Grande', 'Ariana Grande', '1993-06-26', 'arianagrande.com', 'arianagrande', 6, 'https://example.com/artists/ariana_grande.jpg', 'Pop and R&B sensation'),
(63, 'Billie', 'Eilish', 'Billie Eilish', '2001-12-18', 'billieeilish.com', 'billieeilish', 5, 'https://example.com/artists/billie_eilish.jpg', 'Grammy-winning young artist'),
(64, 'Dua', 'Lipa', 'Dua Lipa', '1995-08-22', 'dualipa.com', 'dualipa', 5, 'https://example.com/artists/dua_lipa.jpg', 'British pop superstar'),
(65, 'Harry', 'Styles', 'Harry Styles', '1994-02-01', 'hstyles.co.uk', 'harrystyles', 5, 'https://example.com/artists/harry_styles.jpg', 'Former One Direction member'),
(66, 'Olivia', 'Rodrigo', 'Olivia Rodrigo', '2003-02-20', 'oliviarodrigo.com', 'oliviarodrigo', 3, 'https://example.com/artists/olivia_rodrigo.jpg', 'Breakout pop artist'),
(67, 'Doja', 'Cat', 'Doja Cat', '1995-10-21', 'dojacat.com', 'dojacat', 4, 'https://example.com/artists/doja_cat.jpg', 'Rapper and singer'),
(68, 'The Weeknd', 'Tesfaye', 'The Weeknd', '1990-02-16', 'theweeknd.com', 'theweeknd', 6, 'https://example.com/artists/the_weeknd.jpg', 'Canadian R&B superstar'),
(69, 'Post', 'Malone', 'Post Malone', '1995-07-04', 'postmalone.com', 'postmalone', 5, 'https://example.com/artists/post_malone.jpg', 'Rapper and singer'),
(70, 'Camila', 'Cabello', 'Camila Cabello', '1997-03-03', 'camilacabello.com', 'camila_cabello', 4, 'https://example.com/artists/camila_cabello.jpg', 'Former Fifth Harmony member'),
(71, 'Shawn', 'Mendes', 'Shawn Mendes', '1998-08-08', 'shawnmendesofficial.com', 'shawnmendes', 5, 'https://example.com/artists/shawn_mendes.jpg', 'Canadian pop singer'),
(72, 'Selena', 'Gomez', 'Selena Gomez', '1992-07-22', 'selenagomez.com', 'selenagomez', 5, 'https://example.com/artists/selena_gomez.jpg', 'Actress and singer'),
(73, 'Justin', 'Bieber', 'Justin Bieber', '1994-03-01', 'justinbiebermusic.com', 'justinbieber', 7, 'https://example.com/artists/justin_bieber.jpg', 'Pop phenomenon'),
(74, 'Lady', 'Gaga', 'Lady Gaga', '1986-03-28', 'ladygaga.com', 'ladygaga', 6, 'https://example.com/artists/lady_gaga.jpg', 'Iconic pop artist'),
(75, 'Bruno', 'Mars', 'Bruno Mars', '1985-10-08', 'brunomars.com', 'brunomars', 6, 'https://example.com/artists/bruno_mars.jpg', 'Funk and pop superstar'),
(76, 'Ed', 'Sheeran', 'Ed Sheeran', '1991-02-17', 'edsheeran.com', 'teddysphotos', 7, 'https://example.com/artists/ed_sheeran.jpg', 'British singer-songwriter'),
(77, 'Rihanna', 'Fenty', 'Rihanna', '1988-02-20', 'rihannanow.com', 'badgalriri', 5, 'https://example.com/artists/rihanna.jpg', 'Barbadian superstar'),
(78, 'Beyoncé', 'Knowles', 'Beyoncé', '1981-09-04', 'beyonce.com', 'beyonce', 6, 'https://example.com/artists/beyonce.jpg', 'Global music icon'),
(79, 'Katy', 'Perry', 'Katy Perry', '1984-10-25', 'katyperry.com', 'katyperry', 6, 'https://example.com/artists/katy_perry.jpg', 'Pop superstar'),
(80, 'Adele', 'Adkins', 'Adele', '1988-05-05', 'adele.com', 'adele', 4, 'https://example.com/artists/adele.jpg', 'British soul singer'),
(81, 'Miley', 'Cyrus', 'Miley Cyrus', '1992-11-23', 'mileycyrus.com', 'mileycyrus', 5, 'https://example.com/artists/miley_cyrus.jpg', 'Pop and country artist'),
(82, 'Nicki', 'Minaj', 'Nicki Minaj', '1982-12-08', 'nickiminajofficial.com', 'nickiminaj', 5, 'https://example.com/artists/nicki_minaj.jpg', 'Rapper and singer'),
(83, 'Drake', 'Graham', 'Drake', '1986-10-24', 'drakerelated.com', 'champagnepapi', 6, 'https://example.com/artists/drake.jpg', 'Canadian rapper'),
(84, 'Lizzo', 'Jefferson', 'Lizzo', '1988-04-27', 'lizzomusic.com', 'lizzobeeating', 4, 'https://example.com/artists/lizzo.jpg', 'Singer and rapper'),
(85, 'Charlie', 'Puth', 'Charlie Puth', '1991-12-02', 'charlieputh.com', 'charlieputh', 4, 'https://example.com/artists/charlie_puth.jpg', 'Singer and producer'),
(86, 'Halsey', 'Frangipane', 'Halsey', '1994-09-29', 'iamhalsey.com', 'iamhalsey', 5, 'https://example.com/artists/halsey.jpg', 'Alternative pop artist'),
(87, 'Zayn', 'Malik', 'Zayn', '1993-01-12', 'zaynmalik.com', 'zayn', 4, 'https://example.com/artists/zayn.jpg', 'Former One Direction member'),
(88, 'Lil', 'Nas X', 'Lil Nas X', '1999-04-09', 'lilnasx.com', 'lilnasx', 3, 'https://example.com/artists/lil_nas_x.jpg', 'Rapper and singer'),
(89, 'Sam', 'Smith', 'Sam Smith', '1992-05-19', 'samsmithworld.com', 'samsmith', 5, 'https://example.com/artists/sam_smith.jpg', 'British soul singer'),
(90, 'SZA', 'Rowe', 'SZA', '1989-11-08', 'szactrl.com', 'sza', 4, 'https://example.com/artists/sza.jpg', 'R&B artist');

-- BAND TABLE (17 bands with images)
INSERT INTO Band (band_id, band_name, form_date, website, insta, image, image_caption) VALUES
(1, 'The Killers', '2001-01-01', 'thekillersmusic.com', 'thekillers', 'https://example.com/bands/the_killers.jpg', 'Rock band from Las Vegas'),
(2, 'Arctic Monkeys', '2002-06-01', 'arcticmonkeys.com', 'arcticmonkeys', 'https://example.com/bands/arctic_monkeys.jpg', 'British indie rock band'),
(3, 'Foo Fighters', '1994-01-01', 'foofighters.com', 'foofighters', 'https://example.com/bands/foo_fighters.jpg', 'American rock band formed by Dave Grohl'),
(4, 'Florence + Machine', '2007-07-01', 'florenceandthemachine.net', 'florenceandthemachine', 'https://example.com/bands/florence_machine.jpg', 'English indie rock band'),
(5, 'Tame Impala', '2007-01-01', 'tameimpala.com', 'tameimpala', 'https://example.com/bands/tame_impala.jpg', 'Australian psychedelic music project'),
(6, 'The Strokes', '1998-01-01', 'thestrokes.com', 'thestrokes', 'https://example.com/bands/the_strokes.jpg', 'American rock band from NYC'),
(7, 'Red Hot Chili Peppers', '1983-01-01', 'redhotchilipeppers.com', 'chilipeppers', 'https://example.com/bands/rhcp.jpg', 'American funk rock band'),
(8, 'Muse', '1994-01-01', 'muse.mu', 'muse', 'https://example.com/bands/muse.jpg', 'English rock band'),
(9, 'LCD Soundsystem', '2002-01-01', 'lcdsoundsystem.com', 'lcdsoundsystem', 'https://example.com/bands/lcd_soundsystem.jpg', 'American dance-punk band'),
(10, 'The National', '1999-01-01', 'americanmary.com', 'thenational', 'https://example.com/bands/the_national.jpg', 'American indie rock band'),
(11, 'Vampire Weekend', '2006-01-01', 'vampireweekend.com', 'vampireweekend', 'https://example.com/bands/vampire_weekend.jpg', 'American indie rock band'),
(12, 'Arcade Fire', '2001-01-01', 'arcadefire.com', 'arcadefire', 'https://example.com/bands/arcade_fire.jpg', 'Canadian indie rock band'),
(13, 'The Black Keys', '2001-01-01', 'theblackkeys.com', 'theblackkeys', 'https://example.com/bands/the_black_keys.jpg', 'American rock duo'),
(14, 'Phoenix', '1999-01-01', 'wearephoenix.com', 'wearephoenix', 'https://example.com/bands/phoenix.jpg', 'French indie pop band'),
(15, 'Interpol', '1997-01-01', 'interpolnyc.com', 'interpol', 'https://example.com/bands/interpol.jpg', 'American post-punk revival band'),
(16, 'The 1975', '2002-01-01', 'the1975.com', 'the1975', 'https://example.com/bands/the_1975.jpg', 'English pop rock band'),
(17, 'Queens of the Stone Age', '1996-01-01', 'qotsa.com', 'queensofthestoneage', 'https://example.com/bands/qotsa.jpg', 'American rock band');

-- BANDMEMBERS TABLE (all memberships)
INSERT INTO BandMembers (band_id, artist_id, joined_in) VALUES
-- The Killers (band_id: 1)
(1, 1, '2001-01-01'), -- Brandon Flowers
(1, 2, '2001-01-01'), -- Dave Keuning
(1, 3, '2002-01-01'), -- Mark Stoermer
(1, 4, '2002-01-01'), -- Ronnie Vannucci Jr.

-- Arctic Monkeys (band_id: 2)
(2, 5, '2002-06-01'), -- Alex Turner
(2, 6, '2002-06-01'), -- Jamie Cook
(2, 7, '2006-01-01'), -- Nick O'Malley
(2, 8, '2002-06-01'), -- Matt Helders

-- Foo Fighters (band_id: 3)
(3, 9, '1994-01-01'), -- Dave Grohl
(3, 10, '1995-01-01'), -- Nate Mendel
(3, 11, '1995-01-01'), -- Pat Smear
(3, 12, '1999-01-01'), -- Chris Shiflett
(3, 13, '2017-01-01'), -- Rami Jaffee

-- Florence + Machine (band_id: 4)
(4, 14, '2007-07-01'), -- Florence Welch
(4, 15, '2007-07-01'), -- Isabella Summers

-- Tame Impala (band_id: 5)
(5, 16, '2007-01-01'), -- Kevin Parker
(5, 17, '2008-01-01'), -- Dominic Simper
(5, 18, '2010-01-01'), -- Jay Watson

-- The Strokes (band_id: 6)
(6, 19, '1998-01-01'), -- Julian Casablancas
(6, 20, '1998-01-01'), -- Nick Valensi
(6, 21, '1998-01-01'), -- Albert Hammond Jr.

-- Red Hot Chili Peppers (band_id: 7)
(7, 22, '1983-01-01'), -- Anthony Kiedis
(7, 23, '1983-01-01'), -- Flea
(7, 24, '1988-01-01'), -- Chad Smith
(7, 25, '1988-01-01'), -- John Frusciante

-- Muse (band_id: 8)
(8, 26, '1994-01-01'), -- Matt Bellamy
(8, 27, '1994-01-01'), -- Chris Wolstenholme
(8, 28, '1994-01-01'), -- Dominic Howard

-- LCD Soundsystem (band_id: 9)
(9, 29, '2002-01-01'), -- James Murphy
(9, 30, '2005-01-01'), -- Nancy Whang
(9, 31, '2002-01-01'), -- Pat Mahoney

-- The National (band_id: 10)
(10, 32, '1999-01-01'), -- Matt Berninger
(10, 33, '1999-01-01'), -- Aaron Dessner
(10, 34, '1999-01-01'), -- Bryce Dessner

-- Vampire Weekend (band_id: 11)
(11, 35, '2006-01-01'), -- Ezra Koenig
(11, 36, '2006-01-01'), -- Chris Baio
(11, 37, '2006-01-01'), -- Chris Tomson

-- Arcade Fire (band_id: 12)
(12, 38, '2001-01-01'), -- Win Butler
(12, 39, '2001-01-01'), -- Régine Chassagne
(12, 40, '2003-01-01'), -- Richard Reed Parry

-- The Black Keys (band_id: 13)
(13, 41, '2001-01-01'), -- Dan Auerbach
(13, 42, '2001-01-01'), -- Patrick Carney

-- Phoenix (band_id: 14)
(14, 43, '1999-01-01'), -- Thomas Mars
(14, 44, '1999-01-01'), -- Christian Mazzalai
(14, 45, '1999-01-01'), -- Laurent Brancowitz

-- Interpol (band_id: 15)
(15, 46, '1997-01-01'), -- Paul Banks
(15, 47, '1997-01-01'), -- Daniel Kessler
(15, 48, '2000-01-01'), -- Sam Fogarino

-- The 1975 (band_id: 16)
(16, 49, '2002-01-01'), -- Matty Healy
(16, 50, '2002-01-01'), -- Adam Hann
(16, 51, '2002-01-01'), -- Ross MacDonald
(16, 52, '2002-01-01'), -- George Daniel

-- Queens of the Stone Age (band_id: 17)
(17, 53, '1996-01-01'), -- Josh Homme
(17, 54, '2002-01-01'), -- Troy Van Leeuwen
(17, 55, '2007-01-01'), -- Michael Shuman
(17, 56, '2007-01-01'), -- Dean Fertita
(17, 57, '2013-01-01'); -- Jon Theodore

-- PERFORMER TABLE (all performers)
INSERT INTO Performer (performer_id, performer_name, artist_nband, artist_id, band_id) VALUES
-- Bands (artist_nband = 0)
(1, 'The Killers', 0, NULL, 1),
(2, 'Arctic Monkeys', 0, NULL, 2),
(3, 'Foo Fighters', 0, NULL, 3),
(4, 'Florence + Machine', 0, NULL, 4),
(5, 'Tame Impala', 0, NULL, 5),
(6, 'The Strokes', 0, NULL, 6),
(7, 'Red Hot Chili Peppers', 0, NULL, 7),
(8, 'Muse', 0, NULL, 8),
(9, 'LCD Soundsystem', 0, NULL, 9),
(10, 'The National', 0, NULL, 10),
(11, 'Vampire Weekend', 0, NULL, 11),
(12, 'Arcade Fire', 0, NULL, 12),
(13, 'The Black Keys', 0, NULL, 13),
(14, 'Phoenix', 0, NULL, 14),
(15, 'Interpol', 0, NULL, 15),
(16, 'The 1975', 0, NULL, 16),
(17, 'Queens of the Stone Age', 0, NULL, 17),

-- Solo artists from bands (artist_nband = 1)
(18, 'Brandon Flowers', 1, 1, NULL),
(19, 'Alex Turner', 1, 5, NULL),
(20, 'Dave Grohl', 1, 9, NULL),
(21, 'Florence Welch', 1, 14, NULL),
(22, 'Kevin Parker', 1, 16, NULL),
(23, 'Julian Casablancas', 1, 19, NULL),
(24, 'Anthony Kiedis', 1, 22, NULL),
(25, 'Matt Bellamy', 1, 26, NULL),
(26, 'James Murphy', 1, 29, NULL),
(27, 'Matt Berninger', 1, 32, NULL),
(28, 'Ezra Koenig', 1, 35, NULL),
(29, 'Win Butler', 1, 38, NULL),
(30, 'Dan Auerbach', 1, 41, NULL),
(31, 'Thomas Mars', 1, 43, NULL),
(32, 'Paul Banks', 1, 46, NULL),
(33, 'Matty Healy', 1, 49, NULL),
(34, 'Josh Homme', 1, 53, NULL),

-- Additional collaborators
(35, 'Jack White', 1, 58, NULL),
(36, 'St. Vincent', 1, 59, NULL),
(37, 'Thom Yorke', 1, 60, NULL),

-- Pop artists (artist_nband = 1)
(38, 'Taylor Swift', 1, 61, NULL),
(39, 'Ariana Grande', 1, 62, NULL),
(40, 'Billie Eilish', 1, 63, NULL),
(41, 'Dua Lipa', 1, 64, NULL),
(42, 'Harry Styles', 1, 65, NULL),
(43, 'Olivia Rodrigo', 1, 66, NULL),
(44, 'Doja Cat', 1, 67, NULL),
(45, 'The Weeknd', 1, 68, NULL),
(46, 'Post Malone', 1, 69, NULL),
(47, 'Camila Cabello', 1, 70, NULL),
(48, 'Shawn Mendes', 1, 71, NULL),
(49, 'Selena Gomez', 1, 72, NULL),
(50, 'Justin Bieber', 1, 73, NULL),
(51, 'Lady Gaga', 1, 74, NULL),
(52, 'Bruno Mars', 1, 75, NULL),
(53, 'Ed Sheeran', 1, 76, NULL),
(54, 'Rihanna', 1, 77, NULL),
(55, 'Beyoncé', 1, 78, NULL),
(56, 'Katy Perry', 1, 79, NULL),
(57, 'Adele', 1, 80, NULL),
(58, 'Miley Cyrus', 1, 81, NULL),
(59, 'Nicki Minaj', 1, 82, NULL),
(60, 'Drake', 1, 83, NULL),
(61, 'Lizzo', 1, 84, NULL),
(62, 'Charlie Puth', 1, 85, NULL),
(63, 'Halsey', 1, 86, NULL),
(64, 'Zayn', 1, 87, NULL),
(65, 'Lil Nas X', 1, 88, NULL),
(66, 'Sam Smith', 1, 89, NULL),
(67, 'SZA', 1, 90, NULL);


INSERT INTO Likert (scale) VALUES
(1),
(2),
(3),
(4),
(5);
