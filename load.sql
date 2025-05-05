-- Continents
INSERT INTO Continent (continent_name, image, image_caption) VALUES
('Europe', 'https://example.com/images/europe.jpg', 'Ancient cities, diverse cultures, and music heritage'),
('Asia', 'https://example.com/images/asia.jpg', 'Vibrant landscapes and rhythmic traditions'),
('North America', 'https://example.com/images/north-america.jpg', 'Home of iconic music festivals and genres'),
('South America', 'https://example.com/images/south-america.jpg', 'Passionate rhythms and colorful performances'),
('Africa', 'https://example.com/images/africa.jpg', 'Cradle of rhythm and tribal beats'),
('Australia', 'https://example.com/images/australia.jpg', 'Island continent with open-air festivals'),
('Antarctica', 'https://example.com/images/antarctica.jpg', 'The coolest stage on Earth – literally!');

-- 9 Festival
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

-- 10 descriptions
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

-- 9 locations
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

-- 30 stages
INSERT INTO Stage (stage_id, stage_name, desc_id, capacity, image, image_caption) VALUES 
(1, 'Echo Arena', 1, 100, 'https://example.com/echo.jpg', 'Massive indoor stage with powerful acoustics'),
(2, 'Sunset Stage', 2, 150, 'https://example.com/sunset.jpg', 'Open-air stage ideal for golden hour performances'),
(3, 'Main Vibe', 3, 150, 'https://example.com/mainvibe.jpg', 'Central hub for headliners'),
(4, 'Bass Jungle', 4, 150, 'https://example.com/bassjungle.jpg', 'Underground electronic beats stage'),
(5, 'The Dome', 5, 150, 'https://example.com/dome.jpg', 'Geodesic dome with immersive visuals'),
(6, 'Sonic Bloom', 6, 150, 'https://example.com/sonicbloom.jpg', 'Floral-themed stage for indie acts'),
(7, 'Harmony Hall', 7, 150, 'https://example.com/harmony.jpg', 'Classic architecture with orchestral sets'),
(8, 'Moonlight Deck', 8, 150, 'https://example.com/moondeck.jpg', 'Chill vibe under the stars'),
(9, 'Firefly Stage', 9, 150, 'https://example.com/firefly.jpg', 'Surrounded by glowing lanterns'),
(10, 'Zenith Plaza', 10, 150, 'https://example.com/zenith.jpg', 'Wide open space for dancing'),
(11, 'Aurora Grounds', 1, 150, 'https://example.com/aurora.jpg', 'Northern lights-inspired visuals'),
(12, 'Electric Forest', 2, 150, 'https://example.com/electricforest.jpg', 'Surreal woods with LED trees'),
(13, 'Radiance Square', 3, 100, 'https://example.com/radiance.jpg', 'Luminous atmosphere for pop acts'),
(14, 'Fusion Bay', 4, 150, 'https://example.com/fusion.jpg', 'Mix of genres by the water'),
(15, 'Cosmic Cove', 5, 120, 'https://example.com/cosmic.jpg', 'Galactic theme and laser shows'),
(16, 'Neon Nest', 6, 130, 'https://example.com/neon.jpg', 'Bright lights and synth-heavy acts'),
(17, 'The Drop', 7, 105, 'https://example.com/drop.jpg', 'Bass-heavy and high energy drops'),
(18, 'Wavefront', 8, 100, 'https://example.com/wavefront.jpg', 'By the ocean with rhythmic performances'),
(19, 'Pulse Point', 9, 100, 'https://example.com/pulse.jpg', 'Heart of the festival’s EDM scene'),
(20, 'Nightfall Stage', 10, 100, 'https://example.com/nightfall.jpg', 'Twilight ambiance and mellow grooves'),
(21, 'Infinity Hall', 1, 150, 'https://example.com/infinity.jpg', 'Loop visuals and experimental sets'),
(22, 'Twilight Arena', 2, 16, 'https://example.com/twilight.jpg', 'Ambient lighting and soft beats'),
(23, 'Skyline Beats', 3, 16, 'https://example.com/skyline.jpg', 'City views and rooftop vibe'),
(24, 'Velocity Hall', 4, 16, 'https://example.com/velocity.jpg', 'Fast-paced techno and visuals'),
(25, 'Groove Garden', 5, 100, 'https://example.com/groove.jpg', 'Relaxed groove with floral decor'),
(26, 'Tempo Terrace', 6, 104, 'https://example.com/tempo.jpg', 'Progressive rhythms in the open air'),
(27, 'Phoenix Pit', 7, 100, 'https://example.com/phoenix.jpg', 'Fiery theme with dramatic staging'),
(28, 'Siren Stage', 8, 100, 'https://example.com/siren.jpg', 'Mystical soundscapes and effects'),
(29, 'Cloud Nine', 9, 100, 'https://example.com/cloud.jpg', 'Dreamy acts with aerial views'),
(30, 'The Spark', 10, 140, 'https://example.com/spark.jpg', 'Small stage for breakout artists');

-- 10 equipment
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
 
-- 50 events
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
(12, 2019, 5, '2019-07-05 13:30:00', '2019-07-05 17:30:00', 1, 'https://example.com/event12.jpg', 'Smooth jazz under the stars'),
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
(38, 2024, 30, '2024-06-12 13:30:00', '2024-06-12 17:30:00', 1, 'https://example.com/event38.jpg', 'Pop music with a twist'),
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


INSERT INTO Staff (first_name, last_name, age, xp, role_id, image, image_caption) VALUES
('John', 'Doe', 25, 1, 1, 'https://example.com/john_doe.jpg', 'A dedicated auxiliary staff member'),
('Jane', 'Smith', 30, 2, 2, 'https://example.com/jane_smith.jpg', 'A skilled technician with years of experience'),
('Alice', 'Johnson', 28, 3, 3, 'https://example.com/alice_johnson.jpg', 'Security team lead with advanced expertise'),
('Bob', 'Williams', 35, 4, 1, 'https://example.com/bob_williams.jpg', 'Experienced auxiliary with excellent problem-solving skills'),
('Eve', 'Davis', 40, 5, 2, 'https://example.com/eve_davis.jpg', 'Technician with extensive experience in equipment setup'),
('Charlie', 'Brown', 32, 2, 3, 'https://example.com/charlie_brown.jpg', 'Security guard with solid background'),
('Sophia', 'Martinez', 26, 1, 2, 'https://example.com/sophia_martinez.jpg', 'Technician just starting in the field'),
('Daniel', 'Taylor', 45, 5, 1, 'https://example.com/daniel_taylor.jpg', 'Experienced auxiliary staff with a rich history of roles'),
('Olivia', 'Anderson', 33, 3, 3, 'https://example.com/olivia_anderson.jpg', 'Advanced security expert'),
('Mason', 'Thomas', 29, 4, 2, 'https://example.com/mason_thomas.jpg', 'Expert technician with an outstanding reputation'),
('Lucas', 'Miller', 31, 2, 1, 'https://example.com/lucas_miller.jpg', 'Dedicated auxiliary staff member'),
('Emily', 'Garcia', 36, 3, 2, 'https://example.com/emily_garcia.jpg', 'Technician with excellent equipment handling skills'),
('Michael', 'Martinez', 27, 1, 3, 'https://example.com/michael_martinez.jpg', 'Security staff with a focus on crowd management'),
('Isabella', 'Rodriguez', 34, 2, 1, 'https://example.com/isabella_rodriguez.jpg', 'Auxiliary staff providing general support'),
('Liam', 'Wilson', 38, 5, 3, 'https://example.com/liam_wilson.jpg', 'Veteran security with extensive event management experience'),
('Emma', 'Moore', 41, 4, 2, 'https://example.com/emma_moore.jpg', 'Expert technician with high-level problem-solving skills'),
('William', 'Taylor', 28, 3, 1, 'https://example.com/william_taylor.jpg', 'Auxiliary staff with years of hands-on experience'),
('James', 'Hernandez', 33, 5, 2, 'https://example.com/james_hernandez.jpg', 'Highly experienced technician specializing in equipment setups'),
('Ava', 'Lopez', 30, 2, 3, 'https://example.com/ava_lopez.jpg', 'Security team member with solid field experience'),
('Benjamin', 'Gonzalez', 26, 1, 1, 'https://example.com/benjamin_gonzalez.jpg', 'New auxiliary staff excited to join the team'),
('Harper', 'Jackson', 29, 4, 3, 'https://example.com/harper_jackson.jpg', 'Experienced security staff member ensuring safety'),
('Mia', 'White', 32, 3, 2, 'https://example.com/mia_white.jpg', 'Technician specializing in sound systems'),
('Jack', 'Martin', 39, 5, 1, 'https://example.com/jack_martin.jpg', 'Seasoned auxiliary staff member with great communication skills'),
('Zoe', 'Lee', 31, 2, 2, 'https://example.com/zoe_lee.jpg', 'Technician with experience in light and sound setups'),
('Noah', 'Perez', 25, 1, 3, 'https://example.com/noah_perez.jpg', 'Security staff member with basic training'),
('Mason', 'Clark', 36, 3, 1, 'https://example.com/mason_clark.jpg', 'Experienced auxiliary with solid technical knowledge'),
('Ella', 'Allen', 40, 4, 2, 'https://example.com/ella_allen.jpg', 'Top-tier technician with a vast amount of event setup expertise'),
('Sebastian', 'Young', 28, 2, 1, 'https://example.com/sebastian_young.jpg', 'Auxiliary staff with a can-do attitude'),
('Chloe', 'King', 33, 1, 2, 'https://example.com/chloe_king.jpg', 'Technician just beginning to work on sound systems'),
('Matthew', 'Scott', 44, 5, 3, 'https://example.com/matthew_scott.jpg', 'Veteran security guard with experience in crowd management'),
('Amelia', 'Baker', 27, 3, 2, 'https://example.com/amelia_baker.jpg', 'Experienced technician with a focus on video setups'),
('Oliver', 'Adams', 37, 2, 1, 'https://example.com/oliver_adams.jpg', 'Reliable auxiliary team member with hands-on experience'),
('Harvey', 'Nelson', 29, 5, 2, 'https://example.com/harvey_nelson.jpg', 'Veteran technician with extensive knowledge of event equipment'),
('Aiden', 'Carter', 30, 1, 3, 'https://example.com/aiden_carter.jpg', 'Security team member with growing experience'),
('Lily', 'Mitchell', 35, 4, 1, 'https://example.com/lily_mitchell.jpg', 'Expert auxiliary staff with exceptional customer service skills'),
('Jackson', 'Roberts', 26, 3, 3, 'https://example.com/jackson_roberts.jpg', 'Security expert with years of experience handling large crowds'),
('Grace', 'Hill', 32, 2, 1, 'https://example.com/grace_hill.jpg', 'Auxiliary staff member with experience in logistics'),
('Ethan', 'Davis', 39, 5, 2, 'https://example.com/ethan_davis.jpg', 'Veteran technician specialized in equipment troubleshooting'),
('Scarlett', 'Evans', 28, 1, 3, 'https://example.com/scarlett_evans.jpg', 'Security staff in training with focus on event safety'),
('Luna', 'Thompson', 31, 2, 1, 'https://example.com/luna_thompson.jpg', 'Auxiliary team member supporting with various tasks'),
('Landon', 'Walker', 34, 3, 2, 'https://example.com/landon_walker.jpg', 'Experienced technician with a background in lighting systems'),
('Avery', 'Green', 40, 4, 3, 'https://example.com/avery_green.jpg', 'Expert security staff ensuring event safety'),
('Cameron', 'Harris', 45, 5, 1, 'https://example.com/cameron_harris.jpg', 'Veteran auxiliary staff providing expert support'),
('Ruby', 'Hughes', 32, 2, 2, 'https://example.com/ruby_hughes.jpg', 'Technician with strong audio-visual experience'),
('Samuel', 'Graham', 29, 3, 3, 'https://example.com/samuel_graham.jpg', 'Advanced security staff managing event safety protocols'),
('Isaac', 'Garcia', 27, 1, 2, 'https://example.com/isaac_garcia.jpg', 'Technician with basic skills in event setups'),
('Leah', 'Bennett', 31, 5, 1, 'https://example.com/leah_bennett.jpg', 'Veteran auxiliary with a wealth of experience'),
('Mackenzie', 'Simmons', 38, 4, 3, 'https://example.com/mackenzie_simmons.jpg', 'Expert security staff in charge of crowd control'),
('Nathan', 'Foster', 26, 2, 1, 'https://example.com/nathan_foster.jpg', 'Auxiliary staff assisting in general event duties'),
('Jackie', 'Wright', 33, 1, 3, 'https://example.com/jackie_wright.jpg', 'Security staff with initial training in crowd management'),
('Joshua', 'Barker', 34, 3, 2, 'https://example.com/joshua_barker.jpg', 'Technician with solid background in equipment setup'),
('Aidan', 'Morris', 39, 4, 1, 'https://example.com/aidan_morris.jpg', 'Auxiliary staff with extensive event experience'),
('Peyton', 'Curtis', 30, 2, 3, 'https://example.com/peyton_curtis.jpg', 'Security team member with an eye for detail'),
('Addison', 'Collins', 28, 5, 2, 'https://example.com/addison_collins.jpg', 'Veteran technician specializing in lighting equipment'),
('Grayson', 'Chavez', 33, 4, 1, 'https://example.com/grayson_chavez.jpg', 'Experienced auxiliary staff with top-notch organizational skills');


-- 150 event equipments
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
(1, 'Brandon', 'Flowers', 'Brandon Flowers', '1981-06-21', 'brandonflowersmusic.com', 'brandonflowers', 0, 'https://example.com/artists/brandon_flowers.jpg', 'Lead singer of The Killers'),
(2, 'Dave', 'Keuning', 'Dave Keuning', '1976-03-28', NULL, 'davekeuning', 0, 'https://example.com/artists/dave_keuning.jpg', 'Guitarist for The Killers'),
(3, 'Mark', 'Stoermer', 'Mark Stoermer', '1977-06-28', NULL, 'markstoermer', 0, 'https://example.com/artists/mark_stoermer.jpg', 'Bassist for The Killers'),
(4, 'Ronnie', 'Vannucci Jr.', 'Ronnie Vannucci', '1976-02-15', NULL, 'ronnievannucci', 0, 'https://example.com/artists/ronnie_vannucci.jpg', 'Drummer for The Killers'),

-- Arctic Monkeys members
(5, 'Alex', 'Turner', 'Alex Turner', '1986-01-06', NULL, 'alexjamesturner', 0, 'https://example.com/artists/alex_turner.jpg', 'Lead singer of Arctic Monkeys'),
(6, 'Jamie', 'Cook', 'Jamie Cook', '1985-07-08', NULL, 'jamiecook', 0, 'https://example.com/artists/jamie_cook.jpg', 'Guitarist for Arctic Monkeys'),
(7, 'Nick', 'O\'Malley', 'Nick O\'Malley', '1985-07-05', NULL, 'nickomalley', 0, 'https://example.com/artists/nick_omalley.jpg', 'Bassist for Arctic Monkeys'),
(8, 'Matt', 'Helders', 'Matt Helders', '1986-05-07', NULL, 'matthelders', 0, 'https://example.com/artists/matt_helders.jpg', 'Drummer for Arctic Monkeys'),

-- Foo Fighters members
(9, 'Dave', 'Grohl', 'Dave Grohl', '1969-01-14', 'davegrohl.com', 'davegrohl', 0, 'https://example.com/artists/dave_grohl.jpg', 'Foo Fighters frontman'),
(10, 'Nate', 'Mendel', 'Nate Mendel', '1968-12-02', NULL, 'natemendel', 0, 'https://example.com/artists/nate_mendel.jpg', 'Foo Fighters bassist'),
(11, 'Pat', 'Smear', 'Pat Smear', '1959-08-05', NULL, 'patsmear', 0, 'https://example.com/artists/pat_smear.jpg', 'Foo Fighters guitarist'),
(12, 'Chris', 'Shiflett', 'Chris Shiflett', '1971-05-06', 'chris-shiflett.com', 'chrispshiflett', 0, 'https://example.com/artists/chris_shiflett.jpg', 'Foo Fighters lead guitarist'),
(13, 'Rami', 'Jaffee', 'Rami Jaffee', '1969-03-11', NULL, 'ramijaffee', 0, 'https://example.com/artists/rami_jaffee.jpg', 'Foo Fighters keyboardist'),

-- Florence + Machine members
(14, 'Florence', 'Welch', 'Florence Welch', '1986-08-28', 'florenceandthemachine.net', 'florence', 0, 'https://example.com/artists/florence_welch.jpg', 'Florence + Machine lead singer'),
(15, 'Isabella', 'Summers', 'Isabella Summers', '1980-12-03', NULL, 'isabellamachine', 0, 'https://example.com/artists/isabella_summers.jpg', 'Florence + Machine keyboardist'),

-- Tame Impala members
(16, 'Kevin', 'Parker', 'Kevin Parker', '1986-01-20', 'tameimpala.com', 'kevinparker', 0, 'https://example.com/artists/kevin_parker.jpg', 'Tame Impala multi-instrumentalist'),
(17, 'Dominic', 'Simper', 'Dominic Simper', '1986-01-20', NULL, 'dominicsimper', 0, 'https://example.com/artists/dominic_simper.jpg', 'Tame Impala member'),
(18, 'Jay', 'Watson', 'Jay Watson', '1987-06-25', NULL, 'jaywatsonmusic', 0, 'https://example.com/artists/jay_watson.jpg', 'Tame Impala multi-instrumentalist'),

-- The Strokes members
(19, 'Julian', 'Casablancas', 'Julian Casablancas', '1978-08-23', 'thevoidz.com', 'juliancasablancas', 0, 'https://example.com/artists/julian_casablancas.jpg', 'The Strokes lead singer'),
(20, 'Nick', 'Valensi', 'Nick Valensi', '1981-01-16', NULL, 'nickvalensi', 0, 'https://example.com/artists/nick_valensi.jpg', 'The Strokes guitarist'),
(21, 'Albert', 'Hammond Jr.', 'Albert Hammond Jr.', '1980-04-09', 'alberthammondjr.com', 'alberthammondjr', 0, 'https://example.com/artists/albert_hammond_jr.jpg', 'The Strokes guitarist'),

-- Red Hot Chili Peppers members
(22, 'Anthony', 'Kiedis', 'Anthony Kiedis', '1962-11-01', NULL, 'anthonykiedis', 0, 'https://example.com/artists/anthony_kiedis.jpg', 'RHCP lead singer'),
(23, 'Flea', 'Balzary', 'Flea', '1962-10-16', 'flea',NULL, 0, 'https://example.com/artists/flea.jpg', 'RHCP bassist'),
(24, 'Chad', 'Smith', 'Chad Smith', '1961-10-25', NULL, 'chadsmithofficial', 0, 'https://example.com/artists/chad_smith.jpg', 'RHCP drummer'),
(25, 'John', 'Frusciante', 'John Frusciante', '1970-03-05', NULL, 'johnfrusciante', 0, 'https://example.com/artists/john_frusciante.jpg', 'RHCP guitarist'),

-- Muse members
(26, 'Matt', 'Bellamy', 'Matt Bellamy', '1978-06-09', NULL, 'mattbellamy', 0, 'https://example.com/artists/matt_bellamy.jpg', 'Muse lead singer'),
(27, 'Chris', 'Wolstenholme', 'Chris Wolstenholme', '1978-12-02', NULL, 'wolstenholme', 0, 'https://example.com/artists/chris_wolstenholme.jpg', 'Muse bassist'),
(28, 'Dominic', 'Howard', 'Dominic Howard', '1977-12-07', NULL, 'domhoward', 0, 'https://example.com/artists/dominic_howard.jpg', 'Muse drummer'),

-- LCD Soundsystem members
(29, 'James', 'Murphy', 'James Murphy', '1970-02-04', 'dfa.com', 'jamesmurphydfa', 0, 'https://example.com/artists/james_murphy.jpg', 'LCD Soundsystem frontman'),
(30, 'Nancy', 'Whang', 'Nancy Whang', '1979-06-28', NULL, 'nancywhang', 0, 'https://example.com/artists/nancy_whang.jpg', 'LCD Soundsystem keyboardist'),
(31, 'Pat', 'Mahoney', 'Pat Mahoney', '1975-07-02', NULL, 'patmahoney', 0, 'https://example.com/artists/pat_mahoney.jpg', 'LCD Soundsystem drummer'),

-- The National members
(32, 'Matt', 'Berninger', 'Matt Berninger', '1971-07-13', NULL, 'mattberninger', 0, 'https://example.com/artists/matt_berninger.jpg', 'The National lead singer'),
(33, 'Aaron', 'Dessner', 'Aaron Dessner', '1976-04-23', NULL, 'aarondessner', 0, 'https://example.com/artists/aaron_dessner.jpg', 'The National guitarist'),
(34, 'Bryce', 'Dessner', 'Bryce Dessner', '1976-04-23', NULL, 'brycedessner', 0, 'https://example.com/artists/bryce_dessner.jpg', 'The National guitarist'),

-- Vampire Weekend members
(35, 'Ezra', 'Koenig', 'Ezra Koenig', '1984-04-08', NULL, 'ezrak', 0, 'https://example.com/artists/ezra_koenig.jpg', 'Vampire Weekend lead singer'),
(36, 'Chris', 'Baio', 'Chris Baio', '1984-09-29', NULL, 'cbaio', 0, 'https://example.com/artists/chris_baio.jpg', 'Vampire Weekend bassist'),
(37, 'Chris', 'Tomson', 'Chris Tomson', '1985-05-14', NULL, 'battletomson', 0, 'https://example.com/artists/chris_tomson.jpg', 'Vampire Weekend drummer'),

-- Arcade Fire members
(38, 'Win', 'Butler', 'Win Butler', '1980-04-14', NULL, 'winbutler', 0, 'https://example.com/artists/win_butler.jpg', 'Arcade Fire lead singer'),
(39, 'Régine', 'Chassagne', 'Régine Chassagne', '1977-08-18', NULL, 'reginechassagne', 0, 'https://example.com/artists/regine_chassagne.jpg', 'Arcade Fire multi-instrumentalist'),
(40, 'Richard', 'Reed Parry', 'Richard Reed Parry', '1977-10-04', NULL, 'richardreedparry', 0, 'https://example.com/artists/richard_reed_parry.jpg', 'Arcade Fire multi-instrumentalist'),

-- The Black Keys members
(41, 'Dan', 'Auerbach', 'Dan Auerbach', '1979-05-14', 'danauerbach.com', 'danauerbach', 0, 'https://example.com/artists/dan_auerbach.jpg', 'The Black Keys guitarist'),
(42, 'Patrick', 'Carney', 'Patrick Carney', '1980-04-15', NULL, 'patrickcarney', 0, 'https://example.com/artists/patrick_carney.jpg', 'The Black Keys drummer'),

-- Phoenix members
(43, 'Thomas', 'Mars', 'Thomas Mars', '1976-09-19', NULL, 'thomas__mars', 0, 'https://example.com/artists/thomas_mars.jpg', 'Phoenix lead singer'),
(44, 'Christian', 'Mazzalai', 'Christian Mazzalai', '1973-12-05', NULL, 'christianmazzalai', 0, 'https://example.com/artists/christian_mazzalai.jpg', 'Phoenix guitarist'),
(45, 'Laurent', 'Brancowitz', 'Laurent Brancowitz', '1975-05-21', NULL, 'laurentbrancowitz', 0, 'https://example.com/artists/laurent_brancowitz.jpg', 'Phoenix guitarist'),

-- Interpol members
(46, 'Paul', 'Banks', 'Paul Banks', '1978-05-03', NULL, 'paulbanksnyc', 0, 'https://example.com/artists/paul_banks.jpg', 'Interpol lead singer'),
(47, 'Daniel', 'Kessler', 'Daniel Kessler', '1974-03-17', NULL, 'danielkessler', 0, 'https://example.com/artists/daniel_kessler.jpg', 'Interpol guitarist'),
(48, 'Sam', 'Fogarino', 'Sam Fogarino', '1968-06-16', NULL, 'samfogarino', 0, 'https://example.com/artists/sam_fogarino.jpg', 'Interpol drummer'),

-- The 1975 members
(49, 'Matty', 'Healy', 'Matty Healy', '1989-04-08', NULL, 'trumanblack', 0, 'https://example.com/artists/matty_healy.jpg', 'The 1975 lead singer'),
(50, 'Adam', 'Hann', 'Adam Hann', '1986-05-20', NULL, 'adamhann', 0, 'https://example.com/artists/adam_hann.jpg', 'The 1975 guitarist'),
(51, 'Ross', 'MacDonald', 'Ross MacDonald', '1988-12-21', NULL, 'rossmacdonald', 0, 'https://example.com/artists/ross_macdonald.jpg', 'The 1975 bassist'),
(52, 'George', 'Daniel', 'George Daniel', '1989-03-19', NULL, 'georgedaniel', 0, 'https://example.com/artists/george_daniel.jpg', 'The 1975 drummer'),

-- Queens of the Stone Age members
(53, 'Josh', 'Homme', 'Josh Homme', '1973-05-17', NULL, 'joshhomme', 0, 'https://example.com/artists/josh_homme.jpg', 'QOTSA lead singer'),
(54, 'Troy', 'Van Leeuwen', 'Troy Van Leeuwen', '1970-01-05', NULL, 'troyvanleeuwen', 0, 'https://example.com/artists/troy_van_leeuwen.jpg', 'QOTSA guitarist'),
(55, 'Michael', 'Shuman', 'Michael Shuman', '1986-05-02', NULL, 'michael_shuman', 0, 'https://example.com/artists/michael_shuman.jpg', 'QOTSA bassist'),
(56, 'Dean', 'Fertita', 'Dean Fertita', '1970-05-06', NULL, 'deanfertita', 0, 'https://example.com/artists/dean_fertita.jpg', 'QOTSA keyboardist'),
(57, 'Jon', 'Theodore', 'Jon Theodore', '1973-03-03', NULL, 'jontheodore', 0, 'https://example.com/artists/jon_theodore.jpg', 'QOTSA drummer'),

-- Additional notable artists who collaborate with these bands
(58, 'Jack', 'White', 'Jack White', '1975-07-09', 'jackwhiteiii.com', 'officialjackwhite', 0, 'https://example.com/artists/jack_white.jpg', 'The White Stripes frontman'),
(59, 'St. Vincent', 'Clark', 'St. Vincent', '1982-09-28', 'ilovestvincent.com', 'st_vincent', 0, 'https://example.com/artists/st_vincent.jpg', 'Innovative guitarist and singer'),
(60, 'Thom', 'Yorke', 'Thom Yorke', '1968-10-07', 'radiohead.com', 'thomyorke', 0, 'https://example.com/artists/thom_yorke.jpg', 'Radiohead lead singer'),

-- Pop artists (61-90)
(61, 'Taylor', 'Swift', 'Taylor Swift', '1989-12-13', 'taylorswift.com', 'taylorswift', 0, 'https://example.com/artists/taylor_swift.jpg', 'Global pop superstar'),
(62, 'Ariana', 'Grande', 'Ariana Grande', '1993-06-26', 'arianagrande.com', 'arianagrande', 0, 'https://example.com/artists/ariana_grande.jpg', 'Pop and R&B sensation'),
(63, 'Billie', 'Eilish', 'Billie Eilish', '2001-12-18', 'billieeilish.com', 'billieeilish', 0, 'https://example.com/artists/billie_eilish.jpg', 'Grammy-winning young artist'),
(64, 'Dua', 'Lipa', 'Dua Lipa', '1995-08-22', 'dualipa.com', 'dualipa', 0, 'https://example.com/artists/dua_lipa.jpg', 'British pop superstar'),
(65, 'Harry', 'Styles', 'Harry Styles', '1994-02-01', 'hstyles.co.uk', 'harrystyles', 0, 'https://example.com/artists/harry_styles.jpg', 'Former One Direction member'),
(66, 'Olivia', 'Rodrigo', 'Olivia Rodrigo', '2003-02-20', 'oliviarodrigo.com', 'oliviarodrigo', 0, 'https://example.com/artists/olivia_rodrigo.jpg', 'Breakout pop artist'),
(67, 'Doja', 'Cat', 'Doja Cat', '1995-10-21', 'dojacat.com', 'dojacat', 0, 'https://example.com/artists/doja_cat.jpg', 'Rapper and singer'),
(68, 'The Weeknd', 'Tesfaye', 'The Weeknd', '1990-02-16', 'theweeknd.com', 'theweeknd', 0, 'https://example.com/artists/the_weeknd.jpg', 'Canadian R&B superstar'),
(69, 'Post', 'Malone', 'Post Malone', '1995-07-04', 'postmalone.com', 'postmalone', 0, 'https://example.com/artists/post_malone.jpg', 'Rapper and singer'),
(70, 'Camila', 'Cabello', 'Camila Cabello', '1997-03-03', 'camilacabello.com', 'camila_cabello', 0, 'https://example.com/artists/camila_cabello.jpg', 'Former Fifth Harmony member'),
(71, 'Shawn', 'Mendes', 'Shawn Mendes', '1998-08-08', 'shawnmendesofficial.com', 'shawnmendes', 0, 'https://example.com/artists/shawn_mendes.jpg', 'Canadian pop singer'),
(72, 'Selena', 'Gomez', 'Selena Gomez', '1992-07-22', 'selenagomez.com', 'selenagomez', 0, 'https://example.com/artists/selena_gomez.jpg', 'Actress and singer'),
(73, 'Justin', 'Bieber', 'Justin Bieber', '1994-03-01', 'justinbiebermusic.com', 'justinbieber', 0, 'https://example.com/artists/justin_bieber.jpg', 'Pop phenomenon'),
(74, 'Lady', 'Gaga', 'Lady Gaga', '1986-03-28', 'ladygaga.com', 'ladygaga', 0, 'https://example.com/artists/lady_gaga.jpg', 'Iconic pop artist'),
(75, 'Bruno', 'Mars', 'Bruno Mars', '1985-10-08', 'brunomars.com', 'brunomars', 0, 'https://example.com/artists/bruno_mars.jpg', 'Funk and pop superstar'),
(76, 'Ed', 'Sheeran', 'Ed Sheeran', '1991-02-17', 'edsheeran.com', 'teddysphotos', 0, 'https://example.com/artists/ed_sheeran.jpg', 'British singer-songwriter'),
(77, 'Rihanna', 'Fenty', 'Rihanna', '1988-02-20', 'rihannanow.com', 'badgalriri', 0, 'https://example.com/artists/rihanna.jpg', 'Barbadian superstar'),
(78, 'Beyoncé', 'Knowles', 'Beyoncé', '1981-09-04', 'beyonce.com', 'beyonce', 0, 'https://example.com/artists/beyonce.jpg', 'Global music icon'),
(79, 'Katy', 'Perry', 'Katy Perry', '1984-10-25', 'katyperry.com', 'katyperry', 0, 'https://example.com/artists/katy_perry.jpg', 'Pop superstar'),
(80, 'Adele', 'Adkins', 'Adele', '1988-05-05', 'adele.com', 'adele', 0, 'https://example.com/artists/adele.jpg', 'British soul singer'),
(81, 'Miley', 'Cyrus', 'Miley Cyrus', '1992-11-23', 'mileycyrus.com', 'mileycyrus', 0, 'https://example.com/artists/miley_cyrus.jpg', 'Pop and country artist'),
(82, 'Nicki', 'Minaj', 'Nicki Minaj', '1982-12-08', 'nickiminajofficial.com', 'nickiminaj', 0, 'https://example.com/artists/nicki_minaj.jpg', 'Rapper and singer'),
(83, 'Drake', 'Graham', 'Drake', '1986-10-24', 'drakerelated.com', 'champagnepapi', 0, 'https://example.com/artists/drake.jpg', 'Canadian rapper'),
(84, 'Lizzo', 'Jefferson', 'Lizzo', '1988-04-27', 'lizzomusic.com', 'lizzobeeating', 0, 'https://example.com/artists/lizzo.jpg', 'Singer and rapper'),
(85, 'Charlie', 'Puth', 'Charlie Puth', '1991-12-02', 'charlieputh.com', 'charlieputh', 0, 'https://example.com/artists/charlie_puth.jpg', 'Singer and producer'),
(86, 'Halsey', 'Frangipane', 'Halsey', '1994-09-29', 'iamhalsey.com', 'iamhalsey', 0, 'https://example.com/artists/halsey.jpg', 'Alternative pop artist'),
(87, 'Zayn', 'Malik', 'Zayn', '1993-01-12', 'zaynmalik.com', 'zayn', 0, 'https://example.com/artists/zayn.jpg', 'Former One Direction member'),
(88, 'Lil', 'Nas X', 'Lil Nas X', '1999-04-09', 'lilnasx.com', 'lilnasx', 0, 'https://example.com/artists/lil_nas_x.jpg', 'Rapper and singer'),
(89, 'Sam', 'Smith', 'Sam Smith', '1992-05-19', 'samsmithworld.com', 'samsmith', 0, 'https://example.com/artists/sam_smith.jpg', 'British soul singer'),
(90, 'SZA', 'Rowe', 'SZA', '1989-11-08', 'szactrl.com', 'sza', 0, 'https://example.com/artists/sza.jpg', 'R&B artist');

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



-- Now insert all 400 tickets for all 50 events
INSERT INTO Ticket (event_id, price, visitor_id, ticket_type, pay_method, purchase_date, EAN, activated, image, image_caption) VALUES
-- Event 1 (8 tickets)
(1, 89.99, 1, 'General', 'Credit', '2018-05-11 14:22:10', '1234567890123', 1, 'https://example.com/tickets/1-1.jpg', 'General admission for First event of summer festival'),
(1, 199.99, 2, 'VIP', 'Debit', '2018-05-12 09:15:33', '2234567890123', 1, 'https://example.com/tickets/1-2.jpg', 'VIP access for First event of summer festival'),
(1, 299.99, 3, 'Premium', 'Paypal', '2018-05-13 11:45:22', '3234567890123', 0, 'https://example.com/tickets/1-3.jpg', 'Premium experience for First event of summer festival'),
(1, 499.99, 4, 'Backstage', 'Cash', '2018-05-14 16:30:44', '4234567890123', 1, 'https://example.com/tickets/1-4.jpg', 'Backstage pass for First event of summer festival'),

-- Event 2 (8 tickets)
(2, 89.99, 5, 'General', 'Debit', '2018-05-10 10:12:19', '5234567890123', 1, 'https://example.com/tickets/2-1.jpg', 'General admission for Jazz rhythms on second stage'),
(2, 199.99, 6, 'VIP', 'Credit', '2018-05-11 13:27:45', '6234567890123', 1, 'https://example.com/tickets/2-2.jpg', 'VIP access for Jazz rhythms on second stage'),
(2, 299.99, 7, 'Premium', 'Cash', '2018-05-12 09:18:33', '7234567890123', 0, 'https://example.com/tickets/2-3.jpg', 'Premium experience for Jazz rhythms on second stage'),
(2, 499.99, 8, 'Backstage', 'Paypal', '2018-05-13 15:42:11', '8234567890123', 1, 'https://example.com/tickets/2-4.jpg', 'Backstage pass for Jazz rhythms on second stage'),

-- Event 3 (8 tickets)
(3, 89.99, 9, 'General', 'Paypal', '2018-05-15 12:15:22', '9234567890123', 1, 'https://example.com/tickets/3-1.jpg', 'General admission for Rock hits in afternoon'),
(3, 199.99, 10, 'VIP', 'Credit', '2018-05-16 09:33:44', '0234567890123', 1, 'https://example.com/tickets/3-2.jpg', 'VIP access for Rock hits in afternoon'),
(3, 299.99, 11, 'Premium', 'Debit', '2018-05-17 14:22:11', '1334567890123', 0, 'https://example.com/tickets/3-3.jpg', 'Premium experience for Rock hits in afternoon'),
(3, 499.99, 12, 'Backstage', 'Cash', '2018-05-18 17:45:33', '2434567890123', 1, 'https://example.com/tickets/3-4.jpg', 'Backstage pass for Rock hits in afternoon'),

-- Event 4 (8 tickets)
(4, 89.99, 13, 'General', 'Credit', '2018-05-10 08:22:10', '3434567890123', 1, 'https://example.com/tickets/4-1.jpg', 'General admission for Chill vibes by main stage'),
(4, 199.99, 14, 'VIP', 'Debit', '2018-05-11 11:15:33', '4434567890123', 1, 'https://example.com/tickets/4-2.jpg', 'VIP access for Chill vibes by main stage'),
(4, 299.99, 15, 'Premium', 'Paypal', '2018-05-12 13:45:22', '5434567890123', 0, 'https://example.com/tickets/4-3.jpg', 'Premium experience for Chill vibes by main stage'),
(4, 499.99, 16, 'Backstage', 'Cash', '2018-05-13 18:30:44', '6434567890123', 1, 'https://example.com/tickets/4-4.jpg', 'Backstage pass for Chill vibes by main stage'),

-- Event 5 (8 tickets)
(5, 89.99, 17, 'General', 'Debit', '2018-05-14 09:12:19', '7434567890123', 1, 'https://example.com/tickets/5-1.jpg', 'General admission for Electronic beats under sky'),
(5, 199.99, 18, 'VIP', 'Credit', '2018-05-15 12:27:45', '8434567890123', 1, 'https://example.com/tickets/5-2.jpg', 'VIP access for Electronic beats under sky'),
(5, 299.99, 19, 'Premium', 'Cash', '2018-05-16 08:18:33', '9434567890123', 0, 'https://example.com/tickets/5-3.jpg', 'Premium experience for Electronic beats under sky'),
(5, 499.99, 20, 'Backstage', 'Paypal', '2018-05-17 14:42:11', '0534567890123', 1, 'https://example.com/tickets/5-4.jpg', 'Backstage pass for Electronic beats under sky'),

-- Event 6 (8 tickets)
(6, 89.99, 21, 'General', 'Cash', '2018-05-18 10:22:10', '6634567890123', 1, 'https://example.com/tickets/6-1.jpg', 'General admission for Indie folk melodies at sunset'),
(6, 199.99, 22, 'VIP', 'Paypal', '2018-05-19 11:15:33', '7734567890123', 1, 'https://example.com/tickets/6-2.jpg', 'VIP access for Indie folk melodies at sunset'),
(6, 299.99, 23, 'Premium', 'Credit', '2018-05-20 14:45:22', '8834567890123', 0, 'https://example.com/tickets/6-3.jpg', 'Premium experience for Indie folk melodies at sunset'),
(6, 499.99, 24, 'Backstage', 'Debit', '2018-05-21 17:30:44', '9934567890123', 1, 'https://example.com/tickets/6-4.jpg', 'Backstage pass for Indie folk melodies at sunset'),

-- Event 7 (8 tickets)
(7, 89.99, 25, 'General', 'Paypal', '2018-05-22 09:12:19', '0044567890123', 1, 'https://example.com/tickets/7-1.jpg', 'General admission for Pop stars take the stage'),
(7, 199.99, 26, 'VIP', 'Credit', '2018-05-23 12:27:45', '1144567890123', 1, 'https://example.com/tickets/7-2.jpg', 'VIP access for Pop stars take the stage'),
(7, 299.99, 27, 'Premium', 'Debit', '2018-05-24 08:18:33', '2244567890123', 0, 'https://example.com/tickets/7-3.jpg', 'Premium experience for Pop stars take the stage'),
(7, 499.99, 28, 'Backstage', 'Cash', '2018-05-25 14:42:11', '3344567890123', 1, 'https://example.com/tickets/7-4.jpg', 'Backstage pass for Pop stars take the stage'),

-- Event 8 (8 tickets)
(8, 89.99, 29, 'General', 'Credit', '2018-05-19 08:22:10', '4444567890123', 1, 'https://example.com/tickets/8-1.jpg', 'General admission for Afternoon set by main arena'),
(8, 199.99, 30, 'VIP', 'Debit', '2018-05-20 11:15:33', '5544567890123', 1, 'https://example.com/tickets/8-2.jpg', 'VIP access for Afternoon set by main arena'),
(8, 299.99, 31, 'Premium', 'Paypal', '2018-05-21 13:45:22', '6644567890123', 0, 'https://example.com/tickets/8-3.jpg', 'Premium experience for Afternoon set by main arena'),
(8, 499.99, 32, 'Backstage', 'Cash', '2018-05-22 18:30:44', '7744567890123', 1, 'https://example.com/tickets/8-4.jpg', 'Backstage pass for Afternoon set by main arena'),

-- Event 9 (8 tickets)
(9, 89.99, 33, 'General', 'Debit', '2018-05-23 09:12:19', '8844567890123', 1, 'https://example.com/tickets/9-1.jpg', 'General admission for Bringing the heat with high-energy tracks'),
(9, 199.99, 34, 'VIP', 'Credit', '2018-05-24 12:27:45', '9944567890123', 1, 'https://example.com/tickets/9-2.jpg', 'VIP access for Bringing the heat with high-energy tracks'),
(9, 299.99, 35, 'Premium', 'Cash', '2018-05-25 08:18:33', '0054567890123', 0, 'https://example.com/tickets/9-3.jpg', 'Premium experience for Bringing the heat with high-energy tracks'),
(9, 499.99, 36, 'Backstage', 'Paypal', '2018-05-26 14:42:11', '1154567890123', 1, 'https://example.com/tickets/9-4.jpg', 'Backstage pass for Bringing the heat with high-energy tracks'),

-- Event 10 (8 tickets)
(10, 89.99, 37, 'General', 'Cash', '2018-05-27 10:22:10', '2254567890123', 1, 'https://example.com/tickets/10-1.jpg', 'General admission for The grand finale of the festival'),
(10, 199.99, 38, 'VIP', 'Paypal', '2018-05-28 11:15:33', '3354567890123', 1, 'https://example.com/tickets/10-2.jpg', 'VIP access for The grand finale of the festival'),
(10, 299.99, 39, 'Premium', 'Credit', '2018-05-29 14:45:22', '4454567890123', 0, 'https://example.com/tickets/10-3.jpg', 'Premium experience for The grand finale of the festival'),
(10, 499.99, 40, 'Backstage', 'Debit', '2018-05-30 17:30:44', '5554567890123', 1, 'https://example.com/tickets/10-4.jpg', 'Backstage pass for The grand finale of the festival'),
 
-- Event 11: Opening day of the 2019 festival (2019-07-05)
(11, 89.99, 41, 'General', 'Credit', '2019-06-05 14:22:10', '1234567890124', 1, 'https://example.com/tickets/11-1.jpg', 'General admission for 2019 opening day'),
(11, 199.99, 42, 'VIP', 'Debit', '2019-06-06 09:15:33', '2234567890124', 1, 'https://example.com/tickets/11-2.jpg', 'VIP access for 2019 opening day'),
(11, 299.99, 43, 'Premium', 'Paypal', '2019-06-07 11:45:22', '3234567890124', 0, 'https://example.com/tickets/11-3.jpg', 'Premium experience for 2019 opening day'),
(11, 499.99, 44, 'Backstage', 'Cash', '2019-06-08 16:30:44', '4234567890124', 1, 'https://example.com/tickets/11-4.jpg', 'Backstage pass for 2019 opening day'),
(11, 89.99, 45, 'General', 'Debit', '2019-06-09 10:12:19', '5234567890124', 1, 'https://example.com/tickets/11-5.jpg', 'General admission for 2019 opening day'),
(11, 199.99, 46, 'VIP', 'Credit', '2019-06-10 13:27:45', '6234567890124', 1, 'https://example.com/tickets/11-6.jpg', 'VIP access for 2019 opening day'),
(11, 299.99, 47, 'Premium', 'Cash', '2019-06-11 09:18:33', '7234567890124', 0, 'https://example.com/tickets/11-7.jpg', 'Premium experience for 2019 opening day'),
(11, 499.99, 48, 'Backstage', 'Paypal', '2019-06-12 15:42:11', '8234567890124', 1, 'https://example.com/tickets/11-8.jpg', 'Backstage pass for 2019 opening day'),

-- Event 12: Smooth jazz under the stars (2019-07-05)
(12, 89.99, 49, 'General', 'Paypal', '2019-06-06 12:15:22', '9234567890124', 1, 'https://example.com/tickets/12-1.jpg', 'General admission for Smooth jazz'),
(12, 199.99, 50, 'VIP', 'Credit', '2019-06-07 09:33:44', '0234567890124', 1, 'https://example.com/tickets/12-2.jpg', 'VIP access for Smooth jazz'),
(12, 299.99, 51, 'Premium', 'Debit', '2019-06-08 14:22:11', '1334567890124', 0, 'https://example.com/tickets/12-3.jpg', 'Premium experience for Smooth jazz'),
(12, 499.99, 52, 'Backstage', 'Cash', '2019-06-09 17:45:33', '2434567890124', 1, 'https://example.com/tickets/12-4.jpg', 'Backstage pass for Smooth jazz'),
(12, 89.99, 53, 'General', 'Credit', '2019-06-10 08:22:10', '3434567890124', 1, 'https://example.com/tickets/12-5.jpg', 'General admission for Smooth jazz'),
(12, 199.99, 54, 'VIP', 'Debit', '2019-06-11 11:15:33', '4434567890124', 1, 'https://example.com/tickets/12-6.jpg', 'VIP access for Smooth jazz'),
(12, 299.99, 55, 'Premium', 'Paypal', '2019-06-12 13:45:22', '5434567890124', 0, 'https://example.com/tickets/12-7.jpg', 'Premium experience for Smooth jazz'),
(12, 499.99, 56, 'Backstage', 'Cash', '2019-06-13 18:30:44', '6434567890124', 1, 'https://example.com/tickets/12-8.jpg', 'Backstage pass for Smooth jazz'),

-- Event 13: Rock bands heating up the night (2019-07-06)
(13, 89.99, 57, 'General', 'Debit', '2019-06-14 09:12:19', '7434567890124', 1, 'https://example.com/tickets/13-1.jpg', 'General admission for Rock bands night'),
(13, 199.99, 58, 'VIP', 'Credit', '2019-06-15 12:27:45', '8434567890124', 1, 'https://example.com/tickets/13-2.jpg', 'VIP access for Rock bands night'),
(13, 299.99, 59, 'Premium', 'Cash', '2019-06-16 08:18:33', '9434567890124', 0, 'https://example.com/tickets/13-3.jpg', 'Premium experience for Rock bands night'),
(13, 499.99, 60, 'Backstage', 'Paypal', '2019-06-17 14:42:11', '0534567890124', 1, 'https://example.com/tickets/13-4.jpg', 'Backstage pass for Rock bands night'),
(13, 89.99, 61, 'General', 'Cash', '2019-06-18 10:22:10', '1634567890124', 1, 'https://example.com/tickets/13-5.jpg', 'General admission for Rock bands night'),
(13, 199.99, 62, 'VIP', 'Paypal', '2019-06-19 11:15:33', '2634567890124', 1, 'https://example.com/tickets/13-6.jpg', 'VIP access for Rock bands night'),
(13, 299.99, 63, 'Premium', 'Credit', '2019-06-20 14:45:22', '3634567890124', 0, 'https://example.com/tickets/13-7.jpg', 'Premium experience for Rock bands night'),
(13, 499.99, 64, 'Backstage', 'Debit', '2019-06-21 17:30:44', '4634567890124', 1, 'https://example.com/tickets/13-8.jpg', 'Backstage pass for Rock bands night'),

-- [Continuing pattern through Event 20...]
-- Event 14: Alternative hits and epic vibes (2019-07-06)
(14, 89.99, 65, 'General', 'Paypal', '2019-06-15 12:15:22', '5634567890124', 1, 'https://example.com/tickets/14-1.jpg', 'General admission for Alternative hits'),
(14, 199.99, 66, 'VIP', 'Credit', '2019-06-16 09:33:44', '6634567890124', 1, 'https://example.com/tickets/14-2.jpg', 'VIP access for Alternative hits'),
(14, 299.99, 67, 'Premium', 'Debit', '2019-06-17 14:22:11', '7634567890124', 0, 'https://example.com/tickets/14-3.jpg', 'Premium experience for Alternative hits'),
(14, 499.99, 68, 'Backstage', 'Cash', '2019-06-18 17:45:33', '8634567890124', 1, 'https://example.com/tickets/14-4.jpg', 'Backstage pass for Alternative hits'),

-- Event 15: Dance music and fun with friends (2019-07-07)
(15, 89.99, 69, 'General', 'Credit', '2019-06-19 08:22:10', '9634567890124', 1, 'https://example.com/tickets/15-1.jpg', 'General admission for Dance music'),
(15, 199.99, 70, 'VIP', 'Debit', '2019-06-20 11:15:33', '0734567890124', 1, 'https://example.com/tickets/15-2.jpg', 'VIP access for Dance music'),
(15, 299.99, 71, 'Premium', 'Paypal', '2019-06-21 13:45:22', '1834567890124', 0, 'https://example.com/tickets/15-3.jpg', 'Premium experience for Dance music'),
(15, 499.99, 72, 'Backstage', 'Cash', '2019-06-22 18:30:44', '2834567890124', 1, 'https://example.com/tickets/15-4.jpg', 'Backstage pass for Dance music'),

-- Event 16: Funky beats to end the day (2019-07-07)
(16, 89.99, 73, 'General', 'Debit', '2019-06-23 09:12:19', '3834567890124', 1, 'https://example.com/tickets/16-1.jpg', 'General admission for Funky beats'),
(16, 199.99, 74, 'VIP', 'Credit', '2019-06-24 12:27:45', '4834567890124', 1, 'https://example.com/tickets/16-2.jpg', 'VIP access for Funky beats'),
(16, 299.99, 75, 'Premium', 'Cash', '2019-06-25 08:18:33', '5834567890124', 0, 'https://example.com/tickets/16-3.jpg', 'Premium experience for Funky beats'),
(16, 499.99, 76, 'Backstage', 'Paypal', '2019-06-26 14:42:11', '6834567890124', 1, 'https://example.com/tickets/16-4.jpg', 'Backstage pass for Funky beats'),

-- Event 17: Virtual festival set with a twist (2020-08-01)
(17, 89.99, 77, 'General', 'Cash', '2020-07-02 10:22:10', '7834567890124', 1, 'https://example.com/tickets/17-1.jpg', 'General admission for Virtual festival'),
(17, 199.99, 78, 'VIP', 'Paypal', '2020-07-03 11:15:33', '8834567890124', 1, 'https://example.com/tickets/17-2.jpg', 'VIP access for Virtual festival'),
(17, 299.99, 79, 'Premium', 'Credit', '2020-07-04 14:45:22', '9834567890124', 0, 'https://example.com/tickets/17-3.jpg', 'Premium experience for Virtual festival'),
(17, 499.99, 80, 'Backstage', 'Debit', '2020-07-05 17:30:44', '0934567890124', 1, 'https://example.com/tickets/17-4.jpg', 'Backstage pass for Virtual festival'),

-- Event 18: Live set from the outdoor stage (2020-08-01)
(18, 89.99, 81, 'General', 'Paypal', '2020-07-06 12:15:22', '1934567890124', 1, 'https://example.com/tickets/18-1.jpg', 'General admission for Outdoor stage'),
(18, 199.99, 82, 'VIP', 'Credit', '2020-07-07 09:33:44', '2934567890124', 1, 'https://example.com/tickets/18-2.jpg', 'VIP access for Outdoor stage'),
(18, 299.99, 83, 'Premium', 'Debit', '2020-07-08 14:22:11', '3934567890124', 0, 'https://example.com/tickets/18-3.jpg', 'Premium experience for Outdoor stage'),
(18, 499.99, 84, 'Backstage', 'Cash', '2020-07-09 17:45:33', '4934567890124', 1, 'https://example.com/tickets/18-4.jpg', 'Backstage pass for Outdoor stage'),

-- Event 19: Punk rock and raw energy (2020-08-02)
(19, 89.99, 85, 'General', 'Credit', '2020-07-10 08:22:10', '5934567890124', 1, 'https://example.com/tickets/19-1.jpg', 'General admission for Punk rock'),
(19, 199.99, 86, 'VIP', 'Debit', '2020-07-11 11:15:33', '6934567890124', 1, 'https://example.com/tickets/19-2.jpg', 'VIP access for Punk rock'),
(19, 299.99, 87, 'Premium', 'Paypal', '2020-07-12 13:45:22', '7934567890124', 0, 'https://example.com/tickets/19-3.jpg', 'Premium experience for Punk rock'),
(19, 499.99, 88, 'Backstage', 'Cash', '2020-07-13 18:30:44', '8934567890124', 1, 'https://example.com/tickets/19-4.jpg', 'Backstage pass for Punk rock'),

-- Event 20: Indie vibes in a cozy space (2020-08-02)
(20, 89.99, 89, 'General', 'Debit', '2020-07-14 09:12:19', '9934567890124', 1, 'https://example.com/tickets/20-1.jpg', 'General admission for Indie vibes'),
(20, 199.99, 90, 'VIP', 'Credit', '2020-07-15 12:27:45', '0044567890124', 1, 'https://example.com/tickets/20-2.jpg', 'VIP access for Indie vibes'),
(20, 299.99, 91, 'Premium', 'Cash', '2020-07-16 08:18:33', '1144567890124', 0, 'https://example.com/tickets/20-3.jpg', 'Premium experience for Indie vibes'),
(20, 499.99, 92, 'Backstage', 'Paypal', '2020-07-17 14:42:11', '2244567890124', 1, 'https://example.com/tickets/20-4.jpg', 'Backstage pass for Indie vibes'),
 -- Event 21: Classical music fills the air (2020-08-03)
(21, 89.99, 93, 'General', 'Cash', '2020-07-18 10:22:10', '3344567890124', 1, 'https://example.com/tickets/21-1.jpg', 'General admission for Classical music'),
(21, 199.99, 94, 'VIP', 'Paypal', '2020-07-19 11:15:33', '4444567890124', 1, 'https://example.com/tickets/21-2.jpg', 'VIP access for Classical music'),
(21, 299.99, 95, 'Premium', 'Credit', '2020-07-20 14:45:22', '5544567890124', 0, 'https://example.com/tickets/21-3.jpg', 'Premium experience for Classical music'),
(21, 499.99, 96, 'Backstage', 'Debit', '2020-07-21 17:30:44', '6644567890124', 1, 'https://example.com/tickets/21-4.jpg', 'Backstage pass for Classical music'),
(21, 89.99, 97, 'General', 'Paypal', '2020-07-22 09:12:19', '7744567890124', 1, 'https://example.com/tickets/21-5.jpg', 'General admission for Classical music'),
(21, 199.99, 98, 'VIP', 'Credit', '2020-07-23 12:27:45', '8844567890124', 1, 'https://example.com/tickets/21-6.jpg', 'VIP access for Classical music'),
(21, 299.99, 99, 'Premium', 'Debit', '2020-07-24 08:18:33', '9944567890124', 0, 'https://example.com/tickets/21-7.jpg', 'Premium experience for Classical music'),
(21, 499.99, 100, 'Backstage', 'Cash', '2020-07-25 14:42:11', '0054567890124', 1, 'https://example.com/tickets/21-8.jpg', 'Backstage pass for Classical music'),

-- Event 22: Ambient soundscapes from talented DJs (2020-08-03)
(22, 89.99, 101, 'General', 'Credit', '2020-07-19 08:22:10', '1154567890124', 1, 'https://example.com/tickets/22-1.jpg', 'General admission for Ambient soundscapes'),
(22, 199.99, 102, 'VIP', 'Debit', '2020-07-20 11:15:33', '2254567890124', 1, 'https://example.com/tickets/22-2.jpg', 'VIP access for Ambient soundscapes'),
(22, 299.99, 103, 'Premium', 'Paypal', '2020-07-21 13:45:22', '3354567890124', 0, 'https://example.com/tickets/22-3.jpg', 'Premium experience for Ambient soundscapes'),
(22, 499.99, 104, 'Backstage', 'Cash', '2020-07-22 18:30:44', '4454567890124', 1, 'https://example.com/tickets/22-4.jpg', 'Backstage pass for Ambient soundscapes'),
(22, 89.99, 105, 'General', 'Debit', '2020-07-23 09:12:19', '5554567890124', 1, 'https://example.com/tickets/22-5.jpg', 'General admission for Ambient soundscapes'),
(22, 199.99, 106, 'VIP', 'Credit', '2020-07-24 12:27:45', '6654567890124', 1, 'https://example.com/tickets/22-6.jpg', 'VIP access for Ambient soundscapes'),
(22, 299.99, 107, 'Premium', 'Cash', '2020-07-25 08:18:33', '7754567890124', 0, 'https://example.com/tickets/22-7.jpg', 'Premium experience for Ambient soundscapes'),
(22, 499.99, 108, 'Backstage', 'Paypal', '2020-07-26 14:42:11', '8854567890124', 1, 'https://example.com/tickets/22-8.jpg', 'Backstage pass for Ambient soundscapes'),

-- Event 23: New beginnings after lockdown (2021-06-20)
(23, 89.99, 109, 'General', 'Cash', '2021-05-21 10:22:10', '9954567890124', 1, 'https://example.com/tickets/23-1.jpg', 'General admission for New beginnings'),
(23, 199.99, 110, 'VIP', 'Paypal', '2021-05-22 11:15:33', '0064567890124', 1, 'https://example.com/tickets/23-2.jpg', 'VIP access for New beginnings'),
(23, 299.99, 111, 'Premium', 'Credit', '2021-05-23 14:45:22', '1164567890124', 0, 'https://example.com/tickets/23-3.jpg', 'Premium experience for New beginnings'),
(23, 499.99, 112, 'Backstage', 'Debit', '2021-05-24 17:30:44', '2264567890124', 1, 'https://example.com/tickets/23-4.jpg', 'Backstage pass for New beginnings'),
(23, 89.99, 113, 'General', 'Paypal', '2021-05-25 09:12:19', '3364567890124', 1, 'https://example.com/tickets/23-5.jpg', 'General admission for New beginnings'),
(23, 199.99, 114, 'VIP', 'Credit', '2021-05-26 12:27:45', '4464567890124', 1, 'https://example.com/tickets/23-6.jpg', 'VIP access for New beginnings'),
(23, 299.99, 115, 'Premium', 'Debit', '2021-05-27 08:18:33', '5564567890124', 0, 'https://example.com/tickets/23-7.jpg', 'Premium experience for New beginnings'),
(23, 499.99, 116, 'Backstage', 'Cash', '2021-05-28 14:42:11', '6664567890124', 1, 'https://example.com/tickets/23-8.jpg', 'Backstage pass for New beginnings'),

-- Event 24: Live bands and local artists perform (2021-06-20)
(24, 89.99, 117, 'General', 'Credit', '2021-05-22 08:22:10', '7764567890124', 1, 'https://example.com/tickets/24-1.jpg', 'General admission for Live bands'),
(24, 199.99, 118, 'VIP', 'Debit', '2021-05-23 11:15:33', '8864567890124', 1, 'https://example.com/tickets/24-2.jpg', 'VIP access for Live bands'),
(24, 299.99, 119, 'Premium', 'Paypal', '2021-05-24 13:45:22', '9964567890124', 0, 'https://example.com/tickets/24-3.jpg', 'Premium experience for Live bands'),
(24, 499.99, 120, 'Backstage', 'Cash', '2021-05-25 18:30:44', '0074567890124', 1, 'https://example.com/tickets/24-4.jpg', 'Backstage pass for Live bands'),
(24, 89.99, 121, 'General', 'Debit', '2021-05-26 09:12:19', '1174567890124', 1, 'https://example.com/tickets/24-5.jpg', 'General admission for Live bands'),
(24, 199.99, 122, 'VIP', 'Credit', '2021-05-27 12:27:45', '2274567890124', 1, 'https://example.com/tickets/24-6.jpg', 'VIP access for Live bands'),
(24, 299.99, 123, 'Premium', 'Cash', '2021-05-28 08:18:33', '3374567890124', 0, 'https://example.com/tickets/24-7.jpg', 'Premium experience for Live bands'),
(24, 499.99, 124, 'Backstage', 'Paypal', '2021-05-29 14:42:11', '4474567890124', 1, 'https://example.com/tickets/24-8.jpg', 'Backstage pass for Live bands'),

-- Event 25: Pop and rock performances on the second day (2021-06-21)
(25, 89.99, 125, 'General', 'Cash', '2021-05-23 10:22:10', '5574567890124', 1, 'https://example.com/tickets/25-1.jpg', 'General admission for Pop and rock'),
(25, 199.99, 126, 'VIP', 'Paypal', '2021-05-24 11:15:33', '6674567890124', 1, 'https://example.com/tickets/25-2.jpg', 'VIP access for Pop and rock'),
(25, 299.99, 127, 'Premium', 'Credit', '2021-05-25 14:45:22', '7774567890124', 0, 'https://example.com/tickets/25-3.jpg', 'Premium experience for Pop and rock'),
(25, 499.99, 128, 'Backstage', 'Debit', '2021-05-26 17:30:44', '8874567890124', 1, 'https://example.com/tickets/25-4.jpg', 'Backstage pass for Pop and rock'),
(25, 89.99, 129, 'General', 'Paypal', '2021-05-27 09:12:19', '9974567890124', 1, 'https://example.com/tickets/25-5.jpg', 'General admission for Pop and rock'),
(25, 199.99, 130, 'VIP', 'Credit', '2021-05-28 12:27:45', '0084567890124', 1, 'https://example.com/tickets/25-6.jpg', 'VIP access for Pop and rock'),
(25, 299.99, 131, 'Premium', 'Debit', '2021-05-29 08:18:33', '1184567890124', 0, 'https://example.com/tickets/25-7.jpg', 'Premium experience for Pop and rock'),
(25, 499.99, 132, 'Backstage', 'Cash', '2021-05-30 14:42:11', '2284567890124', 1, 'https://example.com/tickets/25-8.jpg', 'Backstage pass for Pop and rock'),

-- Event 26: Electronic beats under the stars (2021-06-21)
(26, 89.99, 133, 'General', 'Credit', '2021-05-24 08:22:10', '3384567890124', 1, 'https://example.com/tickets/26-1.jpg', 'General admission for Electronic beats'),
(26, 199.99, 134, 'VIP', 'Debit', '2021-05-25 11:15:33', '4484567890124', 1, 'https://example.com/tickets/26-2.jpg', 'VIP access for Electronic beats'),
(26, 299.99, 135, 'Premium', 'Paypal', '2021-05-26 13:45:22', '5584567890124', 0, 'https://example.com/tickets/26-3.jpg', 'Premium experience for Electronic beats'),
(26, 499.99, 136, 'Backstage', 'Cash', '2021-05-27 18:30:44', '6684567890124', 1, 'https://example.com/tickets/26-4.jpg', 'Backstage pass for Electronic beats'),
(26, 89.99, 137, 'General', 'Debit', '2021-05-28 09:12:19', '7784567890124', 1, 'https://example.com/tickets/26-5.jpg', 'General admission for Electronic beats'),
(26, 199.99, 138, 'VIP', 'Credit', '2021-05-29 12:27:45', '8884567890124', 1, 'https://example.com/tickets/26-6.jpg', 'VIP access for Electronic beats'),
(26, 299.99, 139, 'Premium', 'Cash', '2021-05-30 08:18:33', '9984567890124', 0, 'https://example.com/tickets/26-7.jpg', 'Premium experience for Electronic beats'),
(26, 499.99, 140, 'Backstage', 'Paypal', '2021-05-31 14:42:11', '0094567890124', 1, 'https://example.com/tickets/26-8.jpg', 'Backstage pass for Electronic beats'),

-- Event 27: High-energy day of performances (2022-07-11)
(27, 89.99, 141, 'General', 'Cash', '2022-06-11 10:22:10', '1194567890124', 1, 'https://example.com/tickets/27-1.jpg', 'General admission for High-energy day'),
(27, 199.99, 142, 'VIP', 'Paypal', '2022-06-12 11:15:33', '2294567890124', 1, 'https://example.com/tickets/27-2.jpg', 'VIP access for High-energy day'),
(27, 299.99, 143, 'Premium', 'Credit', '2022-06-13 14:45:22', '3394567890124', 0, 'https://example.com/tickets/27-3.jpg', 'Premium experience for High-energy day'),
(27, 499.99, 144, 'Backstage', 'Debit', '2022-06-14 17:30:44', '4494567890124', 1, 'https://example.com/tickets/27-4.jpg', 'Backstage pass for High-energy day'),
(27, 89.99, 145, 'General', 'Paypal', '2022-06-15 09:12:19', '5594567890124', 1, 'https://example.com/tickets/27-5.jpg', 'General admission for High-energy day'),
(27, 199.99, 146, 'VIP', 'Credit', '2022-06-16 12:27:45', '6694567890124', 1, 'https://example.com/tickets/27-6.jpg', 'VIP access for High-energy day'),
(27, 299.99, 147, 'Premium', 'Debit', '2022-06-17 08:18:33', '7794567890124', 0, 'https://example.com/tickets/27-7.jpg', 'Premium experience for High-energy day'),
(27, 499.99, 148, 'Backstage', 'Cash', '2022-06-18 14:42:11', '8894567890124', 1, 'https://example.com/tickets/27-8.jpg', 'Backstage pass for High-energy day'),

-- Event 28: Incredible jazz fusion by local musicians (2022-07-11)
(28, 89.99, 149, 'General', 'Credit', '2022-06-12 08:22:10', '9994567890124', 1, 'https://example.com/tickets/28-1.jpg', 'General admission for Jazz fusion'),
(28, 199.99, 150, 'VIP', 'Debit', '2022-06-13 11:15:33', '0005567890124', 1, 'https://example.com/tickets/28-2.jpg', 'VIP access for Jazz fusion'),
(28, 299.99, 151, 'Premium', 'Paypal', '2022-06-14 13:45:22', '1105567890124', 0, 'https://example.com/tickets/28-3.jpg', 'Premium experience for Jazz fusion'),
(28, 499.99, 152, 'Backstage', 'Cash', '2022-06-15 18:30:44', '2205567890124', 1, 'https://example.com/tickets/28-4.jpg', 'Backstage pass for Jazz fusion'),
(28, 89.99, 153, 'General', 'Debit', '2022-06-16 09:12:19', '3305567890124', 1, 'https://example.com/tickets/28-5.jpg', 'General admission for Jazz fusion'),
(28, 199.99, 154, 'VIP', 'Credit', '2022-06-17 12:27:45', '4405567890124', 1, 'https://example.com/tickets/28-6.jpg', 'VIP access for Jazz fusion'),
(28, 299.99, 155, 'Premium', 'Cash', '2022-06-18 08:18:33', '5505567890124', 0, 'https://example.com/tickets/28-7.jpg', 'Premium experience for Jazz fusion'),
(28, 499.99, 156, 'Backstage', 'Paypal', '2022-06-19 14:42:11', '6605567890124', 1, 'https://example.com/tickets/28-8.jpg', 'Backstage pass for Jazz fusion'),

-- Event 29: Acoustic music and indie performances (2022-07-12)
(29, 89.99, 157, 'General', 'Cash', '2022-06-13 10:22:10', '7705567890124', 1, 'https://example.com/tickets/29-1.jpg', 'General admission for Acoustic music'),
(29, 199.99, 158, 'VIP', 'Paypal', '2022-06-14 11:15:33', '8805567890124', 1, 'https://example.com/tickets/29-2.jpg', 'VIP access for Acoustic music'),
(29, 299.99, 159, 'Premium', 'Credit', '2022-06-15 14:45:22', '9905567890124', 0, 'https://example.com/tickets/29-3.jpg', 'Premium experience for Acoustic music'),
(29, 499.99, 160, 'Backstage', 'Debit', '2022-06-16 17:30:44', '0015567890124', 1, 'https://example.com/tickets/29-4.jpg', 'Backstage pass for Acoustic music'),
(29, 89.99, 1, 'General', 'Paypal', '2022-06-17 09:12:19', '1115567890124', 1, 'https://example.com/tickets/29-5.jpg', 'General admission for Acoustic music'),
(29, 199.99, 2, 'VIP', 'Credit', '2022-06-18 12:27:45', '2215567890124', 1, 'https://example.com/tickets/29-6.jpg', 'VIP access for Acoustic music'),
(29, 299.99, 3, 'Premium', 'Debit', '2022-06-19 08:18:33', '3315567890124', 0, 'https://example.com/tickets/29-7.jpg', 'Premium experience for Acoustic music'),
(29, 499.99, 4, 'Backstage', 'Cash', '2022-06-20 14:42:11', '4415567890124', 1, 'https://example.com/tickets/29-8.jpg', 'Backstage pass for Acoustic music'),

-- Event 30: Main stage acts and thrilling crowds (2022-07-12)
(30, 89.99, 5, 'General', 'Credit', '2022-06-14 08:22:10', '5515567890124', 1, 'https://example.com/tickets/30-1.jpg', 'General admission for Main stage acts'),
(30, 199.99, 6, 'VIP', 'Debit', '2022-06-15 11:15:33', '6615567890124', 1, 'https://example.com/tickets/30-2.jpg', 'VIP access for Main stage acts'),
(30, 299.99, 7, 'Premium', 'Paypal', '2022-06-16 13:45:22', '7715567890124', 0, 'https://example.com/tickets/30-3.jpg', 'Premium experience for Main stage acts'),
(30, 499.99, 8, 'Backstage', 'Cash', '2022-06-17 18:30:44', '8815567890124', 1, 'https://example.com/tickets/30-4.jpg', 'Backstage pass for Main stage acts'),
(30, 89.99, 9, 'General', 'Debit', '2022-06-18 09:12:19', '9915567890124', 1, 'https://example.com/tickets/30-5.jpg', 'General admission for Main stage acts'),
(30, 199.99, 10, 'VIP', 'Credit', '2022-06-19 12:27:45', '0025567890124', 1, 'https://example.com/tickets/30-6.jpg', 'VIP access for Main stage acts'),
(30, 299.99, 11, 'Premium', 'Cash', '2022-06-20 08:18:33', '1125567890124', 0, 'https://example.com/tickets/30-7.jpg', 'Premium experience for Main stage acts'),
(30, 499.99, 12, 'Backstage', 'Paypal', '2022-06-21 14:42:11', '2225567890124', 1, 'https://example.com/tickets/30-8.jpg', 'Backstage pass for Main stage acts'),

 -- Event 31: Rock band kicks off the final day (2022-07-13)
(31, 89.99, 13, 'General', 'Cash', '2022-06-15 10:22:10', '3325567890124', 1, 'https://example.com/tickets/31-1.jpg', 'General admission for Rock band final day'),
(31, 199.99, 14, 'VIP', 'Paypal', '2022-06-16 11:15:33', '4425567890124', 1, 'https://example.com/tickets/31-2.jpg', 'VIP access for Rock band final day'),
(31, 299.99, 15, 'Premium', 'Credit', '2022-06-17 14:45:22', '5525567890124', 0, 'https://example.com/tickets/31-3.jpg', 'Premium experience for Rock band final day'),
(31, 499.99, 16, 'Backstage', 'Debit', '2022-06-18 17:30:44', '6625567890124', 1, 'https://example.com/tickets/31-4.jpg', 'Backstage pass for Rock band final day'),
(31, 89.99, 17, 'General', 'Paypal', '2022-06-19 09:12:19', '7725567890124', 1, 'https://example.com/tickets/31-5.jpg', 'General admission for Rock band final day'),
(31, 199.99, 18, 'VIP', 'Credit', '2022-06-20 12:27:45', '8825567890124', 1, 'https://example.com/tickets/31-6.jpg', 'VIP access for Rock band final day'),
(31, 299.99, 19, 'Premium', 'Debit', '2022-06-21 08:18:33', '9925567890124', 0, 'https://example.com/tickets/31-7.jpg', 'Premium experience for Rock band final day'),
(31, 499.99, 20, 'Backstage', 'Cash', '2022-06-22 14:42:11', '0035567890124', 1, 'https://example.com/tickets/31-8.jpg', 'Backstage pass for Rock band final day'),

-- Event 32: Classical set in the open-air theater (2022-07-13)
(32, 89.99, 21, 'General', 'Credit', '2022-06-16 08:22:10', '1135567890124', 1, 'https://example.com/tickets/32-1.jpg', 'General admission for Classical open-air'),
(32, 199.99, 22, 'VIP', 'Debit', '2022-06-17 11:15:33', '2235567890124', 1, 'https://example.com/tickets/32-2.jpg', 'VIP access for Classical open-air'),
(32, 299.99, 23, 'Premium', 'Paypal', '2022-06-18 13:45:22', '3335567890124', 0, 'https://example.com/tickets/32-3.jpg', 'Premium experience for Classical open-air'),
(32, 499.99, 24, 'Backstage', 'Cash', '2022-06-19 18:30:44', '4435567890124', 1, 'https://example.com/tickets/32-4.jpg', 'Backstage pass for Classical open-air'),
(32, 89.99, 25, 'General', 'Debit', '2022-06-20 09:12:19', '5535567890124', 1, 'https://example.com/tickets/32-5.jpg', 'General admission for Classical open-air'),
(32, 199.99, 26, 'VIP', 'Credit', '2022-06-21 12:27:45', '6635567890124', 1, 'https://example.com/tickets/32-6.jpg', 'VIP access for Classical open-air'),
(32, 299.99, 27, 'Premium', 'Cash', '2022-06-22 08:18:33', '7735567890124', 0, 'https://example.com/tickets/32-7.jpg', 'Premium experience for Classical open-air'),
(32, 499.99, 28, 'Backstage', 'Paypal', '2022-06-23 14:42:11', '8835567890124', 1, 'https://example.com/tickets/32-8.jpg', 'Backstage pass for Classical open-air'),

-- Event 33: Amazing vibes from all genres (2023-05-15)
(33, 89.99, 29, 'General', 'Cash', '2023-04-15 10:22:10', '9935567890124', 1, 'https://example.com/tickets/33-1.jpg', 'General admission for Amazing vibes'),
(33, 199.99, 30, 'VIP', 'Paypal', '2023-04-16 11:15:33', '0045567890124', 1, 'https://example.com/tickets/33-2.jpg', 'VIP access for Amazing vibes'),
(33, 299.99, 31, 'Premium', 'Credit', '2023-04-17 14:45:22', '1145567890124', 0, 'https://example.com/tickets/33-3.jpg', 'Premium experience for Amazing vibes'),
(33, 499.99, 32, 'Backstage', 'Debit', '2023-04-18 17:30:44', '2245567890124', 1, 'https://example.com/tickets/33-4.jpg', 'Backstage pass for Amazing vibes'),
(33, 89.99, 33, 'General', 'Paypal', '2023-04-19 09:12:19', '3345567890124', 1, 'https://example.com/tickets/33-5.jpg', 'General admission for Amazing vibes'),
(33, 199.99, 34, 'VIP', 'Credit', '2023-04-20 12:27:45', '4445567890124', 1, 'https://example.com/tickets/33-6.jpg', 'VIP access for Amazing vibes'),
(33, 299.99, 35, 'Premium', 'Debit', '2023-04-21 08:18:33', '5545567890124', 0, 'https://example.com/tickets/33-7.jpg', 'Premium experience for Amazing vibes'),
(33, 499.99, 36, 'Backstage', 'Cash', '2023-04-22 14:42:11', '6645567890124', 1, 'https://example.com/tickets/33-8.jpg', 'Backstage pass for Amazing vibes'),

-- Event 34: Indie beats and cozy moments (2023-05-15)
(34, 89.99, 37, 'General', 'Credit', '2023-04-16 08:22:10', '7745567890124', 1, 'https://example.com/tickets/34-1.jpg', 'General admission for Indie beats'),
(34, 199.99, 38, 'VIP', 'Debit', '2023-04-17 11:15:33', '8845567890124', 1, 'https://example.com/tickets/34-2.jpg', 'VIP access for Indie beats'),
(34, 299.99, 39, 'Premium', 'Paypal', '2023-04-18 13:45:22', '9945567890124', 0, 'https://example.com/tickets/34-3.jpg', 'Premium experience for Indie beats'),
(34, 499.99, 40, 'Backstage', 'Cash', '2023-04-19 18:30:44', '0055567890124', 1, 'https://example.com/tickets/34-4.jpg', 'Backstage pass for Indie beats'),
(34, 89.99, 41, 'General', 'Debit', '2023-04-20 09:12:19', '1155567890124', 1, 'https://example.com/tickets/34-5.jpg', 'General admission for Indie beats'),
(34, 199.99, 42, 'VIP', 'Credit', '2023-04-21 12:27:45', '2255567890124', 1, 'https://example.com/tickets/34-6.jpg', 'VIP access for Indie beats'),
(34, 299.99, 43, 'Premium', 'Cash', '2023-04-22 08:18:33', '3355567890124', 0, 'https://example.com/tickets/34-7.jpg', 'Premium experience for Indie beats'),
(34, 499.99, 44, 'Backstage', 'Paypal', '2023-04-23 14:42:11', '4455567890124', 1, 'https://example.com/tickets/34-8.jpg', 'Backstage pass for Indie beats'),

-- Event 35: Dance music all night long (2023-05-16)
(35, 89.99, 45, 'General', 'Cash', '2023-04-17 10:22:10', '5555567890124', 1, 'https://example.com/tickets/35-1.jpg', 'General admission for Dance music night'),
(35, 199.99, 46, 'VIP', 'Paypal', '2023-04-18 11:15:33', '6655567890124', 1, 'https://example.com/tickets/35-2.jpg', 'VIP access for Dance music night'),
(35, 299.99, 47, 'Premium', 'Credit', '2023-04-19 14:45:22', '7755567890124', 0, 'https://example.com/tickets/35-3.jpg', 'Premium experience for Dance music night'),
(35, 499.99, 48, 'Backstage', 'Debit', '2023-04-20 17:30:44', '8855567890124', 1, 'https://example.com/tickets/35-4.jpg', 'Backstage pass for Dance music night'),
(35, 89.99, 49, 'General', 'Paypal', '2023-04-21 09:12:19', '9955567890124', 1, 'https://example.com/tickets/35-5.jpg', 'General admission for Dance music night'),
(35, 199.99, 50, 'VIP', 'Credit', '2023-04-22 12:27:45', '0065567890124', 1, 'https://example.com/tickets/35-6.jpg', 'VIP access for Dance music night'),
(35, 299.99, 51, 'Premium', 'Debit', '2023-04-23 08:18:33', '1165567890124', 0, 'https://example.com/tickets/35-7.jpg', 'Premium experience for Dance music night'),
(35, 499.99, 52, 'Backstage', 'Cash', '2023-04-24 14:42:11', '2265567890124', 1, 'https://example.com/tickets/35-8.jpg', 'Backstage pass for Dance music night'),

-- Event 36: Rock anthems playing into the night (2023-05-16)
(36, 89.99, 53, 'General', 'Credit', '2023-04-18 08:22:10', '3365567890124', 1, 'https://example.com/tickets/36-1.jpg', 'General admission for Rock anthems night'),
(36, 199.99, 54, 'VIP', 'Debit', '2023-04-19 11:15:33', '4465567890124', 1, 'https://example.com/tickets/36-2.jpg', 'VIP access for Rock anthems night'),
(36, 299.99, 55, 'Premium', 'Paypal', '2023-04-20 13:45:22', '5565567890124', 0, 'https://example.com/tickets/36-3.jpg', 'Premium experience for Rock anthems night'),
(36, 499.99, 56, 'Backstage', 'Cash', '2023-04-21 18:30:44', '6665567890124', 1, 'https://example.com/tickets/36-4.jpg', 'Backstage pass for Rock anthems night'),
(36, 89.99, 57, 'General', 'Debit', '2023-04-22 09:12:19', '7765567890124', 1, 'https://example.com/tickets/36-5.jpg', 'General admission for Rock anthems night'),
(36, 199.99, 58, 'VIP', 'Credit', '2023-04-23 12:27:45', '8865567890124', 1, 'https://example.com/tickets/36-6.jpg', 'VIP access for Rock anthems night'),
(36, 299.99, 59, 'Premium', 'Cash', '2023-04-24 08:18:33', '9965567890124', 0, 'https://example.com/tickets/36-7.jpg', 'Premium experience for Rock anthems night'),
(36, 499.99, 60, 'Backstage', 'Paypal', '2023-04-25 14:42:11', '0075567890124', 1, 'https://example.com/tickets/36-8.jpg', 'Backstage pass for Rock anthems night'),

-- Event 37: Electronic set to start the fest (2024-06-12)
(37, 89.99, 61, 'General', 'Cash', '2024-05-13 10:22:10', '1175567890124', 1, 'https://example.com/tickets/37-1.jpg', 'General admission for Electronic set'),
(37, 199.99, 62, 'VIP', 'Paypal', '2024-05-14 11:15:33', '2275567890124', 1, 'https://example.com/tickets/37-2.jpg', 'VIP access for Electronic set'),
(37, 299.99, 63, 'Premium', 'Credit', '2024-05-15 14:45:22', '3375567890124', 0, 'https://example.com/tickets/37-3.jpg', 'Premium experience for Electronic set'),
(37, 499.99, 64, 'Backstage', 'Debit', '2024-05-16 17:30:44', '4475567890124', 1, 'https://example.com/tickets/37-4.jpg', 'Backstage pass for Electronic set'),
(37, 89.99, 65, 'General', 'Paypal', '2024-05-17 09:12:19', '5575567890124', 1, 'https://example.com/tickets/37-5.jpg', 'General admission for Electronic set'),
(37, 199.99, 66, 'VIP', 'Credit', '2024-05-18 12:27:45', '6675567890124', 1, 'https://example.com/tickets/37-6.jpg', 'VIP access for Electronic set'),
(37, 299.99, 67, 'Premium', 'Debit', '2024-05-19 08:18:33', '7775567890124', 0, 'https://example.com/tickets/37-7.jpg', 'Premium experience for Electronic set'),
(37, 499.99, 68, 'Backstage', 'Cash', '2024-05-20 14:42:11', '8875567890124', 1, 'https://example.com/tickets/37-8.jpg', 'Backstage pass for Electronic set'),

-- Event 38: Pop music with a twist (2024-06-12)
(38, 89.99, 69, 'General', 'Credit', '2024-05-14 08:22:10', '9975567890124', 1, 'https://example.com/tickets/38-1.jpg', 'General admission for Pop music twist'),
(38, 199.99, 70, 'VIP', 'Debit', '2024-05-15 11:15:33', '0085567890124', 1, 'https://example.com/tickets/38-2.jpg', 'VIP access for Pop music twist'),
(38, 299.99, 71, 'Premium', 'Paypal', '2024-05-16 13:45:22', '1185567890124', 0, 'https://example.com/tickets/38-3.jpg', 'Premium experience for Pop music twist'),
(38, 499.99, 72, 'Backstage', 'Cash', '2024-05-17 18:30:44', '2285567890124', 1, 'https://example.com/tickets/38-4.jpg', 'Backstage pass for Pop music twist'),
(38, 89.99, 73, 'General', 'Debit', '2024-05-18 09:12:19', '3385567890124', 1, 'https://example.com/tickets/38-5.jpg', 'General admission for Pop music twist'),
(38, 199.99, 74, 'VIP', 'Credit', '2024-05-19 12:27:45', '4485567890124', 1, 'https://example.com/tickets/38-6.jpg', 'VIP access for Pop music twist'),
(38, 299.99, 75, 'Premium', 'Cash', '2024-05-20 08:18:33', '5585567890124', 0, 'https://example.com/tickets/38-7.jpg', 'Premium experience for Pop music twist'),
(38, 499.99, 76, 'Backstage', 'Paypal', '2024-05-21 14:42:11', '6685567890124', 1, 'https://example.com/tickets/38-8.jpg', 'Backstage pass for Pop music twist'),

-- Event 39: Alt rock is the vibe (2025-07-08)
(39, 89.99, 77, 'General', 'Cash', '2025-06-08 10:22:10', '7785567890124', 0, 'https://example.com/tickets/39-1.jpg', 'General admission for Alt rock vibe'),
(39, 199.99, 78, 'VIP', 'Paypal', '2025-06-09 11:15:33', '8885567890124', 0, 'https://example.com/tickets/39-2.jpg', 'VIP access for Alt rock vibe'),
(39, 299.99, 79, 'Premium', 'Credit', '2025-06-10 14:45:22', '9985567890124', 0, 'https://example.com/tickets/39-3.jpg', 'Premium experience for Alt rock vibe'),
(39, 499.99, 80, 'Backstage', 'Debit', '2025-06-11 17:30:44', '0095567890124', 0, 'https://example.com/tickets/39-4.jpg', 'Backstage pass for Alt rock vibe'),
(39, 89.99, 81, 'General', 'Paypal', '2025-06-12 09:12:19', '1195567890124', 0, 'https://example.com/tickets/39-5.jpg', 'General admission for Alt rock vibe'),
(39, 199.99, 82, 'VIP', 'Credit', '2025-06-13 12:27:45', '2295567890124', 0, 'https://example.com/tickets/39-6.jpg', 'VIP access for Alt rock vibe'),
(39, 299.99, 83, 'Premium', 'Debit', '2025-06-14 08:18:33', '3395567890124', 0, 'https://example.com/tickets/39-7.jpg', 'Premium experience for Alt rock vibe'),
(39, 499.99, 84, 'Backstage', 'Cash', '2025-06-15 14:42:11', '4495567890124', 0, 'https://example.com/tickets/39-8.jpg', 'Backstage pass for Alt rock vibe'),

-- Event 40: Indie and electro mix for an amazing night (2025-07-08)
(40, 89.99, 85, 'General', 'Credit', '2025-06-09 08:22:10', '5595567890124', 0, 'https://example.com/tickets/40-1.jpg', 'General admission for Indie electro mix'),
(40, 199.99, 86, 'VIP', 'Debit', '2025-06-10 11:15:33', '6695567890124', 0, 'https://example.com/tickets/40-2.jpg', 'VIP access for Indie electro mix'),
(40, 299.99, 87, 'Premium', 'Paypal', '2025-06-11 13:45:22', '7795567890124', 0, 'https://example.com/tickets/40-3.jpg', 'Premium experience for Indie electro mix'),
(40, 499.99, 88, 'Backstage', 'Cash', '2025-06-12 18:30:44', '8895567890124', 0, 'https://example.com/tickets/40-4.jpg', 'Backstage pass for Indie electro mix'),
(40, 89.99, 89, 'General', 'Debit', '2025-06-13 09:12:19', '9995567890124', 0, 'https://example.com/tickets/40-5.jpg', 'General admission for Indie electro mix'),
(40, 199.99, 90, 'VIP', 'Credit', '2025-06-14 12:27:45', '0105567890124', 0, 'https://example.com/tickets/40-6.jpg', 'VIP access for Indie electro mix'),
(40, 299.99, 91, 'Premium', 'Cash', '2025-06-15 08:18:33', '1205567890124', 0, 'https://example.com/tickets/40-7.jpg', 'Premium experience for Indie electro mix'),
(40, 499.99, 92, 'Backstage', 'Paypal', '2025-06-16 14:42:11', '2305567890124', 0, 'https://example.com/tickets/40-8.jpg', 'Backstage pass for Indie electro mix');

 INSERT INTO Ticket (event_id, price, visitor_id, ticket_type, pay_method, purchase_date, EAN, activated, image, image_caption) VALUES
-- Event 41: The final day begins (2026-08-20)
(41, 89.99, 1, 'General', 'Credit', '2026-07-20 14:22:10', '1234567890421', 0, 'https://example.com/tickets/41-1.jpg', 'General admission for The final day begins'),
(41, 199.99, 2, 'VIP', 'Debit', '2026-07-21 09:15:33', '2234567890421', 0, 'https://example.com/tickets/41-2.jpg', 'VIP access for The final day begins'),
(41, 299.99, 3, 'Premium', 'Paypal', '2026-07-22 11:45:22', '3234567890421', 0, 'https://example.com/tickets/41-3.jpg', 'Premium experience for The final day begins'),
(41, 499.99, 4, 'Backstage', 'Cash', '2026-07-23 16:30:44', '4234567890421', 0, 'https://example.com/tickets/41-4.jpg', 'Backstage pass for The final day begins'),
(41, 89.99, 5, 'General', 'Debit', '2026-07-24 10:12:19', '5234567890421', 0, 'https://example.com/tickets/41-5.jpg', 'General admission for The final day begins'),
(41, 199.99, 6, 'VIP', 'Credit', '2026-07-25 13:27:45', '6234567890421', 0, 'https://example.com/tickets/41-6.jpg', 'VIP access for The final day begins'),
(41, 299.99, 7, 'Premium', 'Cash', '2026-07-26 09:18:33', '7234567890421', 0, 'https://example.com/tickets/41-7.jpg', 'Premium experience for The final day begins'),
(41, 499.99, 8, 'Backstage', 'Paypal', '2026-07-27 15:42:11', '8234567890421', 0, 'https://example.com/tickets/41-8.jpg', 'Backstage pass for The final day begins'),

-- Event 42: Time to celebrate with music (2026-08-20)
(42, 89.99, 9, 'General', 'Paypal', '2026-07-21 12:15:22', '9234567890422', 0, 'https://example.com/tickets/42-1.jpg', 'General admission for Time to celebrate'),
(42, 199.99, 10, 'VIP', 'Credit', '2026-07-22 09:33:44', '0234567890422', 0, 'https://example.com/tickets/42-2.jpg', 'VIP access for Time to celebrate'),
(42, 299.99, 11, 'Premium', 'Debit', '2026-07-23 14:22:11', '1334567890422', 0, 'https://example.com/tickets/42-3.jpg', 'Premium experience for Time to celebrate'),
(42, 499.99, 12, 'Backstage', 'Cash', '2026-07-24 17:45:33', '2434567890422', 0, 'https://example.com/tickets/42-4.jpg', 'Backstage pass for Time to celebrate'),
(42, 89.99, 13, 'General', 'Credit', '2026-07-25 08:22:10', '3434567890422', 0, 'https://example.com/tickets/42-5.jpg', 'General admission for Time to celebrate'),
(42, 199.99, 14, 'VIP', 'Debit', '2026-07-26 11:15:33', '4434567890422', 0, 'https://example.com/tickets/42-6.jpg', 'VIP access for Time to celebrate'),
(42, 299.99, 15, 'Premium', 'Paypal', '2026-07-27 13:45:22', '5434567890422', 0, 'https://example.com/tickets/42-7.jpg', 'Premium experience for Time to celebrate'),
(42, 499.99, 16, 'Backstage', 'Cash', '2026-07-28 18:30:44', '6434567890422', 0, 'https://example.com/tickets/42-8.jpg', 'Backstage pass for Time to celebrate'),

-- Event 43: Jazz tunes under the open sky (2026-08-21)
(43, 89.99, 17, 'General', 'Debit', '2026-07-22 09:12:19', '7434567890423', 0, 'https://example.com/tickets/43-1.jpg', 'General admission for Jazz tunes'),
(43, 199.99, 18, 'VIP', 'Credit', '2026-07-23 12:27:45', '8434567890423', 0, 'https://example.com/tickets/43-2.jpg', 'VIP access for Jazz tunes'),
(43, 299.99, 19, 'Premium', 'Cash', '2026-07-24 08:18:33', '9434567890423', 0, 'https://example.com/tickets/43-3.jpg', 'Premium experience for Jazz tunes'),
(43, 499.99, 20, 'Backstage', 'Paypal', '2026-07-25 14:42:11', '0534567890423', 0, 'https://example.com/tickets/43-4.jpg', 'Backstage pass for Jazz tunes'),
(43, 89.99, 21, 'General', 'Cash', '2026-07-26 10:22:10', '1634567890423', 0, 'https://example.com/tickets/43-5.jpg', 'General admission for Jazz tunes'),
(43, 199.99, 22, 'VIP', 'Paypal', '2026-07-27 11:15:33', '2634567890423', 0, 'https://example.com/tickets/43-6.jpg', 'VIP access for Jazz tunes'),
(43, 299.99, 23, 'Premium', 'Credit', '2026-07-28 14:45:22', '3634567890423', 0, 'https://example.com/tickets/43-7.jpg', 'Premium experience for Jazz tunes'),
(43, 499.99, 24, 'Backstage', 'Debit', '2026-07-29 17:30:44', '4634567890423', 0, 'https://example.com/tickets/43-8.jpg', 'Backstage pass for Jazz tunes'),

-- Event 44: Indie bands playing their best (2026-08-21)
(44, 89.99, 25, 'General', 'Paypal', '2026-07-23 12:15:22', '5634567890424', 0, 'https://example.com/tickets/44-1.jpg', 'General admission for Indie bands'),
(44, 199.99, 26, 'VIP', 'Credit', '2026-07-24 09:33:44', '6634567890424', 0, 'https://example.com/tickets/44-2.jpg', 'VIP access for Indie bands'),
(44, 299.99, 27, 'Premium', 'Debit', '2026-07-25 14:22:11', '7634567890424', 0, 'https://example.com/tickets/44-3.jpg', 'Premium experience for Indie bands'),
(44, 499.99, 28, 'Backstage', 'Cash', '2026-07-26 17:45:33', '8634567890424', 0, 'https://example.com/tickets/44-4.jpg', 'Backstage pass for Indie bands'),
(44, 89.99, 29, 'General', 'Credit', '2026-07-27 08:22:10', '9634567890424', 0, 'https://example.com/tickets/44-5.jpg', 'General admission for Indie bands'),
(44, 199.99, 30, 'VIP', 'Debit', '2026-07-28 11:15:33', '0734567890424', 0, 'https://example.com/tickets/44-6.jpg', 'VIP access for Indie bands'),
(44, 299.99, 31, 'Premium', 'Paypal', '2026-07-29 13:45:22', '1834567890424', 0, 'https://example.com/tickets/44-7.jpg', 'Premium experience for Indie bands'),
(44, 499.99, 32, 'Backstage', 'Cash', '2026-07-30 18:30:44', '2834567890424', 0, 'https://example.com/tickets/44-8.jpg', 'Backstage pass for Indie bands'),

-- Event 45: Classical symphony on the last day (2026-08-22)
(45, 89.99, 33, 'General', 'Debit', '2026-07-24 09:12:19', '3834567890425', 0, 'https://example.com/tickets/45-1.jpg', 'General admission for Classical symphony'),
(45, 199.99, 34, 'VIP', 'Credit', '2026-07-25 12:27:45', '4834567890425', 0, 'https://example.com/tickets/45-2.jpg', 'VIP access for Classical symphony'),
(45, 299.99, 35, 'Premium', 'Cash', '2026-07-26 08:18:33', '5834567890425', 0, 'https://example.com/tickets/45-3.jpg', 'Premium experience for Classical symphony'),
(45, 499.99, 36, 'Backstage', 'Paypal', '2026-07-27 14:42:11', '6834567890425', 0, 'https://example.com/tickets/45-4.jpg', 'Backstage pass for Classical symphony'),
(45, 89.99, 37, 'General', 'Cash', '2026-07-28 10:22:10', '7834567890425', 0, 'https://example.com/tickets/45-5.jpg', 'General admission for Classical symphony'),
(45, 199.99, 38, 'VIP', 'Paypal', '2026-07-29 11:15:33', '8834567890425', 0, 'https://example.com/tickets/45-6.jpg', 'VIP access for Classical symphony'),
(45, 299.99, 39, 'Premium', 'Credit', '2026-07-30 14:45:22', '9834567890425', 0, 'https://example.com/tickets/45-7.jpg', 'Premium experience for Classical symphony'),
(45, 499.99, 40, 'Backstage', 'Debit', '2026-07-31 17:30:44', '0934567890425', 0, 'https://example.com/tickets/45-8.jpg', 'Backstage pass for Classical symphony'),

-- Event 46: The grand finale: orchestral music (2026-08-22)
(46, 89.99, 41, 'General', 'Paypal', '2026-07-25 12:15:22', '1934567890426', 0, 'https://example.com/tickets/46-1.jpg', 'General admission for Orchestral music'),
(46, 199.99, 42, 'VIP', 'Credit', '2026-07-26 09:33:44', '2934567890426', 0, 'https://example.com/tickets/46-2.jpg', 'VIP access for Orchestral music'),
(46, 299.99, 43, 'Premium', 'Debit', '2026-07-27 14:22:11', '3934567890426', 0, 'https://example.com/tickets/46-3.jpg', 'Premium experience for Orchestral music'),
(46, 499.99, 44, 'Backstage', 'Cash', '2026-07-28 17:45:33', '4934567890426', 0, 'https://example.com/tickets/46-4.jpg', 'Backstage pass for Orchestral music'),
(46, 89.99, 45, 'General', 'Credit', '2026-07-29 08:22:10', '5934567890426', 0, 'https://example.com/tickets/46-5.jpg', 'General admission for Orchestral music'),
(46, 199.99, 46, 'General', 'Debit', '2026-07-30 11:15:33', '6934567890426', 0, 'https://example.com/tickets/46-6.jpg', 'VIP access for Orchestral music'),
(46, 299.99, 47, 'Premium', 'Paypal', '2026-07-31 13:45:22', '7934567890426', 0, 'https://example.com/tickets/46-7.jpg', 'Premium experience for Orchestral music'),
(46, 499.99, 48, 'Backstage', 'Cash', '2026-08-01 18:30:44', '8934567890426', 0, 'https://example.com/tickets/46-8.jpg', 'Backstage pass for Orchestral music'),

-- Event 47: Closing set of the festival (2026-08-23)
(47, 89.99, 49, 'General', 'Credit', '2026-07-26 08:22:10', '9934567890427', 0, 'https://example.com/tickets/47-1.jpg', 'General admission for Closing set'),
(47, 199.99, 50, 'VIP', 'Debit', '2026-07-27 11:15:33', '0044567890427', 0, 'https://example.com/tickets/47-2.jpg', 'VIP access for Closing set'),
(47, 299.99, 51, 'Premium', 'Paypal', '2026-07-28 13:45:22', '1144567890427', 0, 'https://example.com/tickets/47-3.jpg', 'Premium experience for Closing set'),
(47, 499.99, 52, 'Backstage', 'Cash', '2026-07-29 18:30:44', '2244567890427', 0, 'https://example.com/tickets/47-4.jpg', 'Backstage pass for Closing set'),
(47, 89.99, 53, 'General', 'Debit', '2026-07-30 09:12:19', '3344567890427', 0, 'https://example.com/tickets/47-5.jpg', 'General admission for Closing set'),
(47, 199.99, 54, 'General', 'Credit', '2026-07-31 12:27:45', '4444567890427', 0, 'https://example.com/tickets/47-6.jpg', 'VIP access for Closing set'),
(47, 299.99, 55, 'Premium', 'Cash', '2026-08-01 08:18:33', '5544567890427', 0, 'https://example.com/tickets/47-7.jpg', 'Premium experience for Closing set'),
(47, 499.99, 56, 'Backstage', 'Paypal', '2026-08-02 14:42:11', '6644567890427', 0, 'https://example.com/tickets/47-8.jpg', 'Backstage pass for Closing set'),

-- Event 48: Special performances to end the fest (2026-08-23)
(48, 89.99, 57, 'General', 'Cash', '2026-07-27 10:22:10', '7744567890428', 0, 'https://example.com/tickets/48-1.jpg', 'General admission for Special performances'),
(48, 199.99, 58, 'VIP', 'Paypal', '2026-07-28 11:15:33', '8844567890428', 0, 'https://example.com/tickets/48-2.jpg', 'VIP access for Special performances'),
(48, 299.99, 59, 'Premium', 'Credit', '2026-07-29 14:45:22', '9944567890428', 0, 'https://example.com/tickets/48-3.jpg', 'Premium experience for Special performances'),
(48, 499.99, 60, 'Backstage', 'Debit', '2026-07-30 17:30:44', '0054567890428', 0, 'https://example.com/tickets/48-4.jpg', 'Backstage pass for Special performances'),
(48, 89.99, 61, 'General', 'Paypal', '2026-07-31 09:12:19', '1154567890428', 0, 'https://example.com/tickets/48-5.jpg', 'General admission for Special performances'),
(48, 199.99, 62, 'General', 'Credit', '2026-08-01 12:27:45', '2254567890428', 0, 'https://example.com/tickets/48-6.jpg', 'VIP access for Special performances'),
(48, 299.99, 63, 'Premium', 'Debit', '2026-08-02 08:18:33', '3354567890428', 0, 'https://example.com/tickets/48-7.jpg', 'Premium experience for Special performances'),
(48, 499.99, 64, 'Backstage', 'Cash', '2026-08-03 14:42:11', '4454567890428', 0, 'https://example.com/tickets/48-8.jpg', 'Backstage pass for Special performances'),

-- Additional tickets for events 41-48 to reach 400 total (using visitors 65-160)
-- Event 41 additional tickets
(41, 89.99, 65, 'General', 'Debit', '2026-07-28 10:12:19', '5554567890421', 0, 'https://example.com/tickets/41-9.jpg', 'General admission for The final day begins'),
(41, 199.99, 66, 'VIP', 'Credit', '2026-07-29 13:27:45', '6654567890421', 0, 'https://example.com/tickets/41-10.jpg', 'VIP access for The final day begins'),
(41, 299.99, 67, 'Premium', 'Cash', '2026-07-30 09:18:33', '7754567890421', 0, 'https://example.com/tickets/41-11.jpg', 'Premium experience for The final day begins'),
(41, 499.99, 68, 'Backstage', 'Paypal', '2026-07-31 15:42:11', '8854567890421', 0, 'https://example.com/tickets/41-12.jpg', 'Backstage pass for The final day begins'),

-- Event 42 additional tickets
(42, 89.99, 69, 'General', 'Credit', '2026-07-29 08:22:10', '9954567890422', 0, 'https://example.com/tickets/42-9.jpg', 'General admission for Time to celebrate'),
(42, 199.99, 70, 'VIP', 'Debit', '2026-07-30 11:15:33', '0064567890422', 0, 'https://example.com/tickets/42-10.jpg', 'VIP access for Time to celebrate'),
(42, 299.99, 71, 'Premium', 'Paypal', '2026-07-31 13:45:22', '1164567890422', 0, 'https://example.com/tickets/42-11.jpg', 'Premium experience for Time to celebrate'),
(42, 499.99, 72, 'Backstage', 'Cash', '2026-08-01 18:30:44', '2264567890422', 0, 'https://example.com/tickets/42-12.jpg', 'Backstage pass for Time to celebrate'),

-- Event 43 additional tickets
(43, 89.99, 73, 'General', 'Paypal', '2026-07-30 12:15:22', '3364567890423', 0, 'https://example.com/tickets/43-9.jpg', 'General admission for Jazz tunes'),
(43, 199.99, 74, 'VIP', 'Credit', '2026-07-31 09:33:44', '4464567890423', 0, 'https://example.com/tickets/43-10.jpg', 'VIP access for Jazz tunes'),
(43, 299.99, 75, 'Premium', 'Debit', '2026-08-01 14:22:11', '5564567890423', 0, 'https://example.com/tickets/43-11.jpg', 'Premium experience for Jazz tunes'),
(43, 499.99, 76, 'Backstage', 'Cash', '2026-08-02 17:45:33', '6664567890423', 0, 'https://example.com/tickets/43-12.jpg', 'Backstage pass for Jazz tunes'),

-- Event 44 additional tickets
(44, 89.99, 77, 'General', 'Debit', '2026-07-31 09:12:19', '7764567890424', 0, 'https://example.com/tickets/44-9.jpg', 'General admission for Indie bands'),
(44, 199.99, 78, 'VIP', 'Credit', '2026-08-01 12:27:45', '8864567890424', 0, 'https://example.com/tickets/44-10.jpg', 'VIP access for Indie bands'),
(44, 299.99, 79, 'Premium', 'Cash', '2026-08-02 08:18:33', '9964567890424', 0, 'https://example.com/tickets/44-11.jpg', 'Premium experience for Indie bands'),
(44, 499.99, 80, 'Backstage', 'Paypal', '2026-08-03 14:42:11', '0074567890424', 0, 'https://example.com/tickets/44-12.jpg', 'Backstage pass for Indie bands'),

-- Event 45 additional tickets
(45, 89.99, 81, 'General', 'Cash', '2026-08-01 10:22:10', '1174567890425', 0, 'https://example.com/tickets/45-9.jpg', 'General admission for Classical symphony'),
(45, 199.99, 82, 'VIP', 'Paypal', '2026-08-02 11:15:33', '2274567890425', 0, 'https://example.com/tickets/45-10.jpg', 'VIP access for Classical symphony'),
(45, 299.99, 83, 'Premium', 'Credit', '2026-08-03 14:45:22', '3374567890425', 0, 'https://example.com/tickets/45-11.jpg', 'Premium experience for Classical symphony'),
(45, 499.99, 84, 'Backstage', 'Debit', '2026-08-04 17:30:44', '4474567890425', 0, 'https://example.com/tickets/45-12.jpg', 'Backstage pass for Classical symphony'),

-- Event 46 additional tickets
(46, 89.99, 85, 'General', 'Credit', '2026-08-02 08:22:10', '5574567890426', 0, 'https://example.com/tickets/46-9.jpg', 'General admission for Orchestral music'),
(46, 199.99, 86, 'General', 'Debit', '2026-08-03 11:15:33', '6674567890426', 0, 'https://example.com/tickets/46-10.jpg', 'VIP access for Orchestral music'),
(46, 299.99, 87, 'Premium', 'Paypal', '2026-08-04 13:45:22', '7774567890426', 0, 'https://example.com/tickets/46-11.jpg', 'Premium experience for Orchestral music'),
(46, 499.99, 88, 'Backstage', 'Cash', '2026-08-05 18:30:44', '8874567890426', 0, 'https://example.com/tickets/46-12.jpg', 'Backstage pass for Orchestral music'),

-- Event 47 additional tickets
(47, 89.99, 89, 'General', 'Paypal', '2026-08-03 12:15:22', '9974567890427', 0, 'https://example.com/tickets/47-9.jpg', 'General admission for Closing set'),
(47, 199.99, 90, 'General', 'Credit', '2026-08-04 09:33:44', '0084567890427', 0, 'https://example.com/tickets/47-10.jpg', 'VIP access for Closing set'),
(47, 299.99, 91, 'Premium', 'Debit', '2026-08-05 14:22:11', '1184567890427', 0, 'https://example.com/tickets/47-11.jpg', 'Premium experience for Closing set'),
(47, 499.99, 92, 'Backstage', 'Cash', '2026-08-06 17:45:33', '2284567890427', 0, 'https://example.com/tickets/47-12.jpg', 'Backstage pass for Closing set'),

-- Event 48 additional tickets
(48, 89.99, 93, 'General', 'Debit', '2026-08-04 09:12:19', '3384567890428', 0, 'https://example.com/tickets/48-9.jpg', 'General admission for Special performances'),
(48, 199.99, 94, 'General', 'Credit', '2026-08-05 12:27:45', '4484567890428', 0, 'https://example.com/tickets/48-10.jpg', 'VIP access for Special performances'),
(48, 299.99, 95, 'Premium', 'Cash', '2026-08-06 08:18:33', '5584567890428', 0, 'https://example.com/tickets/48-11.jpg', 'Premium experience for Special performances'),
(48, 499.99, 96, 'Backstage', 'Paypal', '2026-08-07 14:42:11', '6684567890428', 0, 'https://example.com/tickets/48-12.jpg', 'Backstage pass for Special performances'),

-- More additional tickets to reach exactly 400 (using visitors 97-160)
-- Event 41
(41, 89.99, 97, 'General', 'Credit', '2026-08-05 08:22:10', '7784567890421', 0, 'https://example.com/tickets/41-13.jpg', 'General admission for The final day begins'),
(41, 199.99, 98, 'VIP', 'Debit', '2026-08-06 11:15:33', '8884567890421', 0, 'https://example.com/tickets/41-14.jpg', 'VIP access for The final day begins'),
(41, 299.99, 99, 'Premium', 'Paypal', '2026-08-07 13:45:22', '9984567890421', 0, 'https://example.com/tickets/41-15.jpg', 'Premium experience for The final day begins'),
(41, 499.99, 100, 'Backstage', 'Cash', '2026-08-08 18:30:44', '0094567890421', 0, 'https://example.com/tickets/41-16.jpg', 'Backstage pass for The final day begins'),

-- Event 42
(42, 89.99, 101, 'General', 'Cash', '2026-08-06 10:22:10', '1194567890422', 0, 'https://example.com/tickets/42-13.jpg', 'General admission for Time to celebrate'),
(42, 199.99, 102, 'VIP', 'Paypal', '2026-08-07 11:15:33', '2294567890422', 0, 'https://example.com/tickets/42-14.jpg', 'VIP access for Time to celebrate'),
(42, 299.99, 103, 'Premium', 'Credit', '2026-08-08 14:45:22', '3394567890422', 0, 'https://example.com/tickets/42-15.jpg', 'Premium experience for Time to celebrate'),
(42, 499.99, 104, 'Backstage', 'Debit', '2026-08-09 17:30:44', '4494567890422', 0, 'https://example.com/tickets/42-16.jpg', 'Backstage pass for Time to celebrate'),

-- Event 43
(43, 89.99, 105, 'General', 'Paypal', '2026-08-07 12:15:22', '5594567890423', 0, 'https://example.com/tickets/43-13.jpg', 'General admission for Jazz tunes'),
(43, 199.99, 106, 'VIP', 'Credit', '2026-08-08 09:33:44', '6694567890423', 0, 'https://example.com/tickets/43-14.jpg', 'VIP access for Jazz tunes'),
(43, 299.99, 107, 'Premium', 'Debit', '2026-08-09 14:22:11', '7794567890423', 0, 'https://example.com/tickets/43-15.jpg', 'Premium experience for Jazz tunes'),
(43, 499.99, 108, 'Backstage', 'Cash', '2026-08-10 17:45:33', '8894567890423', 0, 'https://example.com/tickets/43-16.jpg', 'Backstage pass for Jazz tunes'),

-- Event 44
(44, 89.99, 109, 'General', 'Credit', '2026-08-08 08:22:10', '9994567890424', 0, 'https://example.com/tickets/44-13.jpg', 'General admission for Indie bands'),
(44, 199.99, 110, 'VIP', 'Debit', '2026-08-09 11:15:33', '0104567890424', 0, 'https://example.com/tickets/44-14.jpg', 'VIP access for Indie bands'),
(44, 299.99, 111, 'Premium', 'Paypal', '2026-08-10 13:45:22', '1204567890424', 0, 'https://example.com/tickets/44-15.jpg', 'Premium experience for Indie bands'),
(44, 499.99, 112, 'Backstage', 'Cash', '2026-08-11 18:30:44', '2304567890424', 0, 'https://example.com/tickets/44-16.jpg', 'Backstage pass for Indie bands'),

-- Event 45
(45, 89.99, 113, 'General', 'Debit', '2026-08-09 09:12:19', '3404567890425', 0, 'https://example.com/tickets/45-13.jpg', 'General admission for Classical symphony'),
(45, 199.99, 114, 'VIP', 'Credit', '2026-08-10 12:27:45', '4504567890425', 0, 'https://example.com/tickets/45-14.jpg', 'VIP access for Classical symphony'),
(45, 299.99, 115, 'Premium', 'Cash', '2026-08-11 08:18:33', '5604567890425', 0, 'https://example.com/tickets/45-15.jpg', 'Premium experience for Classical symphony'),
(45, 499.99, 116, 'Backstage', 'Paypal', '2026-08-12 14:42:11', '6704567890425', 0, 'https://example.com/tickets/45-16.jpg', 'Backstage pass for Classical symphony'),

-- Event 46
(46, 89.99, 117, 'General', 'Cash', '2026-08-10 10:22:10', '7804567890426', 0, 'https://example.com/tickets/46-13.jpg', 'General admission for Orchestral music'),
(46, 199.99, 118, 'General', 'Paypal', '2026-08-11 11:15:33', '8904567890426', 0, 'https://example.com/tickets/46-14.jpg', 'VIP access for Orchestral music'),
(46, 299.99, 119, 'Premium', 'Credit', '2026-08-12 14:45:22', '9004567890426', 0, 'https://example.com/tickets/46-15.jpg', 'Premium experience for Orchestral music'),
(46, 499.99, 120, 'Backstage', 'Debit', '2026-08-13 17:30:44', '0114567890426', 0, 'https://example.com/tickets/46-16.jpg', 'Backstage pass for Orchestral music'),

-- Event 47
(47, 89.99, 121, 'General', 'Paypal', '2026-08-11 12:15:22', '1214567890427', 0, 'https://example.com/tickets/47-13.jpg', 'General admission for Closing set'),
(47, 199.99, 122, 'General', 'Credit', '2026-08-12 09:33:44', '2314567890427', 0, 'https://example.com/tickets/47-14.jpg', 'VIP access for Closing set'),
(47, 299.99, 123, 'Premium', 'Debit', '2026-08-13 14:22:11', '3414567890427', 0, 'https://example.com/tickets/47-15.jpg', 'Premium experience for Closing set'),
(47, 499.99, 124, 'Backstage', 'Cash', '2026-08-14 17:45:33', '4514567890427', 0, 'https://example.com/tickets/47-16.jpg', 'Backstage pass for Closing set'),

-- Event 48
(48, 89.99, 125, 'General', 'Credit', '2026-08-12 08:22:10', '5614567890428', 0, 'https://example.com/tickets/48-13.jpg', 'General admission for Special performances'),
(48, 199.99, 126, 'General', 'Debit', '2026-08-13 11:15:33', '6714567890428', 0, 'https://example.com/tickets/48-14.jpg', 'VIP access for Special performances'),
(48, 299.99, 127, 'Premium', 'Paypal', '2026-08-14 13:45:22', '7814567890428', 0, 'https://example.com/tickets/48-15.jpg', 'Premium experience for Special performances'),
(48, 499.99, 128, 'Backstage', 'Cash', '2026-08-15 18:30:44', '8914567890428', 0, 'https://example.com/tickets/48-16.jpg', 'Backstage pass for Special performances'),

-- Final additional tickets to reach exactly 400
-- Event 41
(41, 89.99, 129, 'General', 'Debit', '2026-08-13 09:12:19', '9014567890421', 0, 'https://example.com/tickets/41-17.jpg', 'General admission for The final day begins'),
(41, 199.99, 130, 'VIP', 'Credit', '2026-08-14 12:27:45', '0124567890421', 0, 'https://example.com/tickets/41-18.jpg', 'VIP access for The final day begins'),

-- Event 42
(42, 299.99, 131, 'Premium', 'Cash', '2026-08-14 08:18:33', '1224567890422', 0, 'https://example.com/tickets/42-17.jpg', 'Premium experience for Time to celebrate'),
(42, 499.99, 132, 'Backstage', 'Paypal', '2026-08-15 14:42:11', '2324567890422', 0, 'https://example.com/tickets/42-18.jpg', 'Backstage pass for Time to celebrate'),

-- Event 43
(43, 89.99, 133, 'General', 'Cash', '2026-08-15 10:22:10', '3424567890423', 0, 'https://example.com/tickets/43-17.jpg', 'General admission for Jazz tunes'),
(43, 199.99, 134, 'VIP', 'Paypal', '2026-08-16 11:15:33', '4524567890423', 0, 'https://example.com/tickets/43-18.jpg', 'VIP access for Jazz tunes'),

-- Event 44
(44, 299.99, 135, 'Premium', 'Credit', '2026-08-16 14:45:22', '5624567890424', 0, 'https://example.com/tickets/44-17.jpg', 'Premium experience for Indie bands'),
(44, 499.99, 136, 'Backstage', 'Debit', '2026-08-17 17:30:44', '6724567890424', 0, 'https://example.com/tickets/44-18.jpg', 'Backstage pass for Indie bands'),

-- Event 45
(45, 89.99, 137, 'General', 'Paypal', '2026-08-17 09:12:19', '7824567890425', 0, 'https://example.com/tickets/45-17.jpg', 'General admission for Classical symphony'),
(45, 199.99, 138, 'VIP', 'Credit', '2026-08-18 12:27:45', '8924567890425', 0, 'https://example.com/tickets/45-18.jpg', 'VIP access for Classical symphony'),

-- Event 49 (8 tickets)
(49, 89.99, 149, 'General', 'Credit', '2026-07-20 14:22:10', '9834567890123', 0, 'https://example.com/tickets/49-1.jpg', 'General admission for Final celebration day'),
(49, 199.99, 150, 'VIP', 'Debit', '2026-07-21 09:15:33', '9934567890125', 0, 'https://example.com/tickets/49-2.jpg', 'VIP access for Final celebration day'),
(49, 299.99, 151, 'Premium', 'Paypal', '2026-07-22 11:45:22', '0034567890123', 0, 'https://example.com/tickets/49-3.jpg', 'Premium experience for Final celebration day'),
(49, 499.99, 152, 'Backstage', 'Cash', '2026-07-23 16:30:44', '1134567890123', 0, 'https://example.com/tickets/49-4.jpg', 'Backstage pass for Final celebration day'),

-- Event 50 (8 tickets)
(50, 89.99, 153, 'General', 'Paypal', '2026-07-25 12:15:22', '2234567890125', 0, 'https://example.com/tickets/50-1.jpg', 'General admission for Farewell to wonderful year'),
(50, 199.99, 154, 'VIP', 'Credit', '2026-07-26 09:33:44', '3334567890123', 0, 'https://example.com/tickets/50-2.jpg', 'VIP access for Farewell to wonderful year'),
(50, 299.99, 155, 'Premium', 'Debit', '2026-07-27 14:22:11', '4434567890125', 0, 'https://example.com/tickets/50-3.jpg', 'Premium experience for Farewell to wonderful year'),
(50, 499.99, 156, 'Backstage', 'Cash', '2026-07-28 17:45:33', '5534567890123', 0, 'https://example.com/tickets/50-4.jpg', 'Backstage pass for Farewell to wonderful year');
-- events 46,47 and 48 are sold out

INSERT INTO Genre (genre_id, image, image_caption) VALUES
('Pop', 'https://example.com/pop.jpg', 'Popular mainstream sound'),
('Rock', 'https://example.com/rock.jpg', 'Guitar-driven rock music'),
('Jazz', 'https://example.com/jazz.jpg', 'Smooth and improvisational jazz'),
('HipHop', 'https://example.com/hiphop.jpg', 'Beats and lyrical flow of hip hop'),
('Electronic', 'https://example.com/electronic.jpg', 'Synth-heavy electronic music'),
('Country', 'https://example.com/country.jpg', 'Southern twang and storytelling'),
('Metal', 'https://example.com/metal.jpg', 'Heavy and aggressive metal sounds'),
('Blues', 'https://example.com/blues.jpg', 'Soulful blues tradition');

INSERT INTO Subgenre (subgenre_id, genre_id, image, image_caption) VALUES
('Alt Pop', 'Pop', 'https://example.com/altpop.jpg', 'Alternative Pop vibes'),
('Alternative Rock', 'Rock', 'https://example.com/altrock.jpg', 'Alternative Rock power'),
('Americana', 'Country', 'https://example.com/americana.jpg', 'Classic Americana tunes'),
('Art Pop', 'Pop', 'https://example.com/artpop.jpg', 'Experimental pop artistry'),
('Avant-garde Jazz', 'Jazz', 'https://example.com/avantjazz.jpg', 'Boundary-pushing jazz'),
('Bebop', 'Jazz', 'https://example.com/bebop.jpg', 'Fast-paced bebop jazz'),
('Blues Gospel', 'Blues', 'https://example.com/bluesgospel.jpg', 'Spiritual blues fusion'),
('Blues Rock', 'Rock', 'https://example.com/bluesrock.jpg', 'Blues with a rock edge'),
('Bubblegum Pop', 'Pop', 'https://example.com/bubblegumpop.jpg', 'Catchy and sweet pop'),
('Chillwave', 'Electronic', 'https://example.com/chillwave.jpg', 'Lo-fi chillwave tones'),
('City Pop', 'Pop', 'https://example.com/citypop.jpg', 'Japanese 80s pop'),
('Dance-Punk', 'Rock', 'https://example.com/dancepunk.jpg', 'Dance and punk collision'),
('Disco Pop', 'Pop', 'https://example.com/discopop.jpg', 'Groovy disco-infused pop'),
('Electro', 'Electronic', 'https://example.com/electro.jpg', 'Classic electro beats'),
('Fresh Jazz', 'Jazz', 'https://example.com/freshjazz.jpg', 'New wave jazz fusion'),
('Funk Rock', 'Rock', 'https://example.com/funkrock.jpg', 'Funky rock rhythms'),
('Garage Rock', 'Rock', 'https://example.com/garagerock.jpg', 'Raw garage rock energy'),
('Glam Pop', 'Pop', 'https://example.com/glampop.jpg', 'Glamorous pop hits'),
('Gothic Metal', 'Metal', 'https://example.com/gothicmetal.jpg', 'Dark, melodic metal'),
('Gypsy Jazz', 'Jazz', 'https://example.com/gypsyjazz.jpg', 'Django-style jazz vibes'),
('Hip Hop Old School', 'HipHop', 'https://example.com/oldschoolhiphop.jpg', 'Old-school hip hop'),
('Honky Tonk', 'Country', 'https://example.com/honkytonk.jpg', 'Honky tonk classics'),
('Horrorcore', 'HipHop', 'https://example.com/horrorcore.jpg', 'Dark horror-themed rap'),
('Indie Pop', 'Pop', 'https://example.com/indiepop.jpg', 'Indie-style pop songs'),
('Indie Rock', 'Rock', 'https://example.com/indierock.jpg', 'Independent rock spirit'),
('Jazz Rap', 'HipHop', 'https://example.com/jazzrap.jpg', 'Smooth jazz meets rap'),
('Jump Blues', 'Blues', 'https://example.com/jumpblues.jpg', 'Upbeat swing-influenced blues'),
('Math Rock', 'Rock', 'https://example.com/mathrock.jpg', 'Rhythmically complex rock'),
('Outlaw Country', 'Country', 'https://example.com/outlawcountry.jpg', 'Rebellious country sound'),
('Post-Punk', 'Rock', 'https://example.com/postpunk.jpg', 'Dark, edgy post-punk'),
('Psychedelic Rock', 'Rock', 'https://example.com/psyrock.jpg', 'Trippy psychedelic rock'),
('Shoegaze', 'Rock', 'https://example.com/shoegaze.jpg', 'Dreamy shoegaze tones'),
('Soft Pop', 'Pop', 'https://example.com/softpop.jpg', 'Gentle pop melodies'),
('Stoner Rock', 'Rock', 'https://example.com/stonerrock.jpg', 'Heavy, groovy stoner rock'),
('Swing', 'Jazz', 'https://example.com/swing.jpg', 'Big band swing jazz'),
('Thrash Metal', 'Metal', 'https://example.com/thrashmetal.jpg', 'Fast and aggressive metal'),
('Traditional Country', 'Country', 'https://example.com/traditionalcountry.jpg', 'Classic country style'),
('Trance', 'Electronic', 'https://example.com/trance.jpg', 'Hypnotic trance music'),
('Vaporwave', 'Electronic', 'https://example.com/vaporwave.jpg', 'Retro-futurist vaporwave');



-- Populating the PerformerSubgenre table with performers and their respective subgenres
INSERT INTO PerformerSubgenre (performer_id, subgenre_id) VALUES
(1, 'Indie Rock'),
(1, 'Vaporwave'),
(2, 'Indie Rock'),
(3, 'Alternative Rock'),
(3, 'Vaporwave'),
(4, 'Indie Pop'),
(4, 'Horrorcore'),
(4, 'Honky Tonk'),
(5, 'Psychedelic Rock'),
(6, 'Garage Rock'),
(7, 'Funk Rock'),
(8, 'Alternative Rock'),
(9, 'Dance-Punk'),
(10, 'Indie Rock'),
(11, 'Thrash Metal'),
(11, 'Indie Pop'),
(11, 'Fresh Jazz'),
(12, 'Indie Rock'),
(13, 'Blues Rock'),
(14, 'Indie Pop'),
(15, 'Post-Punk'),
(15, 'Avant-garde Jazz'),
(16, 'Swing'),
(16, 'Avant-garde Jazz'),
(17, 'Stoner Rock'),
(18, 'Alternative Rock'),
(18, 'Honky Tonk'),
(18, 'Traditional Country'),
(19, 'Indie Rock'),
(20, 'Alternative Rock'),
(21, 'Indie Pop'),
(22, 'Psychedelic Rock'),
(23, 'Indie Rock'),
(24, 'Alternative Rock'),
(25, 'Alternative Rock'),
(26, 'Indie Rock'),
(27, 'Indie Rock'),
(28, 'Indie Pop'),
(29, 'Indie Rock'),
(30, 'Swing'),
(30, 'Traditional Country'),
(30, 'Blues Rock'),
(30, 'Jump Blues'),
(31, 'Swing'),
(32, 'Post-Punk'),
(33, 'Indie Pop'),
(34, 'Stoner Rock'),
(35, 'Hip Hop Old School'),
(35, 'Blues Rock'),
(36, 'Indie Rock'),
(36, 'Hip Hop Old School'),
(36, 'Outlaw Country'),
(37, 'Alternative Rock'),
(38, 'Glam Pop'),
(39, 'Alt Pop'),
(39, 'Art Pop'),
(40, 'Disco Pop'),
(41, 'Bubblegum Pop'),
(41, 'City Pop'),
(41, 'Art Pop'),
(42, 'Blues Gospel'),
(43, 'Soft Pop'),
(43, 'Post-Punk'),
(44, 'Americana'),
(45, 'Bebop'),
(46, 'Bebop'),
(47, 'Bebop'),
(48, 'Bebop'),
(49, 'Alt Pop'),
(50, 'Electro'),
(50, 'Jump Blues'),
(50, 'Trance'),
(50, 'Gypsy Jazz'),
(51, 'Alt Pop'),
(52, 'City Pop'),
(52, 'Trance'),
(52, 'Math Rock'),
(52, 'Shoegaze'),
(53, 'Bubblegum Pop'),
(54, 'Americana'),
(55, 'Trance'),
(56, 'Bubblegum Pop'),
(57, 'Electro'),
(58, 'Alt Pop'),
(59, 'Chillwave'),  
(60, 'Jazz Rap'),
(61, 'City Pop'),
(62, 'Jump Blues'),
(62, 'Math Rock'),
(62, 'Gypsy Jazz'),
(63, 'Chillwave'),
(64, 'Jazz Rap'),
(65, 'Bubblegum Pop'),
(66, 'Thrash Metal'),
(67, 'Gothic Metal');

-- Employment table population script

INSERT INTO Employment (contract_id, staff_id, event_id) VALUES
-- Event 1 (Stage 1 - Capacity 100)  **
(1, 1, 1), (2, 4, 1), -- Auxiliary (2% = 2)
(3, 3, 1), (4, 6, 1), (5, 9, 1), (6, 15, 1), (7, 19, 1), -- Security (5% = 5)
(8, 2, 1), (9, 5, 1), (10, 7, 1), -- Technicians

-- Event 2 (Stage 2 - Capacity 150) **
(11, 17, 2), (12, 20, 2), (13, 23, 2), -- Auxiliary (2% = 3)
(14, 34, 2), (15, 36, 2), (16, 39, 2), (17, 42, 2), (18, 45, 2), (19, 48, 2), (20, 50, 2), (21, 53, 2), -- Security (5% = 8)
(22, 12, 2), (23, 16, 2), (24, 18, 2), (25, 22, 2), -- Technicians

-- Event 3 (Stage 3 - Capacity 150) ***
(26, 4, 3), (27, 11, 3), (28, 14, 3), -- Auxiliary (3)
(29, 3, 3), (30, 6, 3), (31, 9, 3), (32, 15, 3), (33, 19, 3), (34, 21, 3), (35, 25, 3), (36, 30, 3), -- Security (8)
(37, 2, 3), (38, 5, 3), (39, 7, 3), (40, 10, 3), -- Technicians

-- Event 4 (Stage 1 - Capacity 100) ***
(41, 17, 4), (42, 20, 4), -- Auxiliary (2)
(43, 34, 4), (44, 36, 4), (45, 39, 4), (46, 42, 4), (47, 45, 4), -- Security (5)
(48, 12, 4), (49, 16, 4), (50, 18, 4), -- Technicians

-- Event 5 (Stage 2 - Capacity 150) ****
(51, 8, 5), (52, 11, 5), (53, 14, 5), -- Auxiliary (3)
(54, 3, 5), (55, 6, 5), (56, 9, 5), (57, 15, 5), (58, 19, 5), (59, 21, 5), (60, 25, 5), (61, 30, 5), -- Security (8)
(62, 2, 5), (63, 5, 5), (64, 7, 5), (65, 10, 5), -- Technicians

-- Event 6 (Stage 3 - Capacity 150) ****
(66, 17, 6), (67, 20, 6), (68, 23, 6), -- Auxiliary (3)
(69, 34, 6), (70, 36, 6), (71, 39, 6), (72, 42, 6), (73, 45, 6), (74, 48, 6), (75, 50, 6), (76, 53, 6), -- Security (8)
(77, 12, 6), (78, 16, 6), (79, 18, 6), (80, 22, 6), -- Technicians

-- Event 7 (Stage 3 - Capacity 150) **
(81, 4, 7), (82, 11, 7), (83, 14, 7), -- Auxiliary (3)
(84, 3, 7), (85, 6, 7), (86, 9, 7), (87, 15, 7), (88, 19, 7), (89, 21, 7), (90, 25, 7), (91, 30, 7), -- Security (8)
(92, 2, 7), (93, 5, 7), (94, 7, 7), (95, 10, 7), -- Technicians

-- Event 8 (Stage 1 - Capacity 100) **
(96, 17, 8), (97, 20, 8), -- Auxiliary (2)
(98, 34, 8), (99, 36, 8), (100, 39, 8), (101, 42, 8), (102, 45, 8), -- Security (5)
(103, 12, 8), (104, 16, 8), (105, 18, 8), -- Technicians

-- Event 9 (Stage 2 - Capacity 150) ***
(106, 8, 9), (107, 11, 9), (108, 14, 9), -- Auxiliary (3)
(109, 3, 9), (110, 6, 9), (111, 9, 9), (112, 15, 9), (113, 19, 9), (114, 21, 9), (115, 25, 9), (116, 30, 9), -- Security (8)
(117, 2, 9), (118, 5, 9), (119, 7, 9), (120, 10, 9), -- Technicians

-- Event 10 (Stage 1 - Capacity 100) ***
(121, 17, 10), (122, 20, 10), -- Auxiliary (2)
(123, 34, 10), (124, 36, 10), (125, 39, 10), (126, 42, 10), (127, 45, 10), -- Security (5)
(128, 12, 10), (129, 16, 10), (130, 18, 10), -- Technicians

-- Continuing with the same pattern for remaining events...
-- Event 11 (Stage 4 - Capacity 150) **
(131, 8, 11), (132, 11, 11), (133, 14, 11), -- Auxiliary (3)
(134, 3, 11), (135, 6, 11), (136, 9, 11), (137, 15, 11), (138, 19, 11), (139, 21, 11), (140, 25, 11), (141, 30, 11), -- Security (8)
(142, 2, 11), (143, 5, 11), (144, 7, 11), (145, 10, 11), -- Technicians

-- Event 12 (Stage 5 - Capacity 150) **
(146, 17, 12), (147, 20, 12), (148, 23, 12), -- Auxiliary (3)
(149, 34, 12), (150, 36, 12), (151, 39, 12), (152, 42, 12), (153, 45, 12), (154, 48, 12), (155, 50, 12), (156, 53, 12), -- Security (8)
(157, 12, 12), (158, 16, 12), (159, 18, 12), (160, 22, 12), -- Technicians

-- Event 13 (Stage 4 - Capacity 150) ***
(161, 8, 13), (162, 11, 13), (163, 14, 13), -- Auxiliary (3)
(164, 3, 13), (165, 6, 13), (166, 9, 13), (167, 15, 13), (168, 19, 13), (169, 21, 13), (170, 25, 13), (171, 30, 13), -- Security (8)
(172, 2, 13), (173, 5, 13), (174, 7, 13), (175, 10, 13), -- Technicians

-- Event 14 (Stage 5 - Capacity 150) ***
(176, 17, 14), (177, 20, 14), (178, 23, 14), -- Auxiliary (3)
(179, 34, 14), (180, 36, 14), (181, 39, 14), (182, 42, 14), (183, 45, 14), (184, 48, 14), (185, 50, 14), (186, 53, 14), -- Security (8)
(187, 12, 14), (188, 16, 14), (189, 18, 14), (190, 22, 14), -- Technicians

-- Event 15 (Stage 6 - Capacity 150) **
(191, 8, 15), (192, 11, 15), (193, 14, 15), -- Auxiliary (3)
(194, 3, 15), (195, 6, 15), (196, 9, 15), (197, 15, 15), (198, 19, 15), (199, 21, 15), (200, 25, 15), (201, 30, 15), -- Security (8)
(202, 2, 15), (203, 5, 15), (204, 7, 15), (205, 10, 15); -- Technicians

INSERT INTO Employment (contract_id, staff_id, event_id) VALUES
-- Previous events (1-15) omitted for brevity, following same pattern...

-- Event 16 (Stage 4 - Capacity 150) **
(206, 17, 16), (207, 20, 16), (208, 23, 16), -- Auxiliary (3)
(209, 36, 16), (210, 39, 16), (211, 42, 16), (212, 45, 16), (213, 50, 16), (214, 48, 16), (215, 53, 16), (216, 34, 16), -- Security (8)
(217, 12, 16), (218, 16, 16), (219, 18, 16), (220, 22, 16), -- Technicians

-- Event 17 (Stage 7 - Capacity 150) ***
(221, 11, 17), (222, 14, 17), (223, 17, 17), -- Auxiliary (3)
(224, 3, 17), (225, 6, 17), (226, 9, 17), (227, 15, 17), (228, 19, 17), (229, 21, 17), (230, 25, 17), (231, 30, 17), -- Security (8)
(232, 2, 17), (233, 5, 17), (234, 7, 17), (235, 10, 17), -- Technicians

-- Event 18 (Stage 8 - Capacity 150) ***
(236, 20, 18), (237, 23, 18), (238, 26, 18), -- Auxiliary (3)
(239, 34, 18), (240, 36, 18), (241, 39, 18), (242, 42, 18), (243, 45, 18), (244, 48, 18), (245, 50, 18), (246, 53, 18), -- Security (8)
(247, 12, 18), (248, 16, 18), (249, 18, 18), (250, 22, 18), -- Technicians

-- Event 19 (Stage 29 - Capacity 100) **
(251, 11, 19), (252, 14, 19), -- Auxiliary (2)
(253, 3, 19), (254, 6, 19), (255, 9, 19), (256, 15, 19), (257, 19, 19), -- Security (5)
(258, 2, 19), (259, 5, 19), (260, 7, 19), -- Technicians

-- Event 20 (Stage 7 - Capacity 150) **
(261, 17, 20), (262, 20, 20), (263, 23, 20), -- Auxiliary (3)
(264, 34, 20), (265, 36, 20), (266, 39, 20), (267, 42, 20), (268, 45, 20), (269, 48, 20), (270, 50, 20), (271, 53, 20), -- Security (8)
(272, 12, 20), (273, 16, 20), (274, 18, 20), (275, 22, 20), -- Technicians

-- Event 21 (Stage 8 - Capacity 150) ***
(276, 11, 21), (277, 14, 21), (278, 17, 21), -- Auxiliary (3)
(279, 6, 21), (280, 9, 21), (281, 15, 21), (282, 19, 21), (283, 21, 21), (284, 25, 21), (285, 30, 21), (286, 34, 21), -- Security (8)
(287, 2, 21), (288, 5, 21), (289, 7, 21), (290, 10, 21), -- Technicians

-- Event 22 (Stage 9 - Capacity 150 ***
(291, 20, 22), (292, 23, 22), (293, 26, 22), -- Auxiliary (3)
(294, 34, 22), (295, 36, 22), (296, 39, 22), (297, 42, 22), (298, 45, 22), (299, 48, 22), (300, 50, 22), (301, 53, 22), -- Security (8)
(302, 12, 22), (303, 16, 22), (304,18, 22), (305, 22, 22), -- Technicians

-- Event 23 (Stage 10 - Capacity 150) **
(306, 11, 23), (307, 14, 23), (308, 17, 23), -- Auxiliary (3)
(309, 3, 23), (310, 6, 23), (311, 9, 23), (312, 15, 23), (313, 19, 23), (314, 21, 23), (315, 25, 23), (316, 30, 23), -- Security (8)
(317, 2, 23), (318, 5, 23), (319, 7, 23), (320, 10, 23), -- Technicians

-- Event 24 (Stage 11 - Capacity 150) **
(321, 20, 24), (322, 23, 24), (323, 26, 24), -- Auxiliary (3)
(324, 36, 24), (325, 39, 24), (326, 42, 24), (327, 45, 24), (328, 48, 24), (329, 50, 24), (330, 53, 24), (331, 34, 24), -- Security (8)
(332, 12, 24), (333, 16, 24), (334, 18, 24), (335, 22, 24), -- Technicians

-- Event 25 (Stage 12 - Capacity 150) ***
(336, 11, 25), (337, 14, 25), (338, 17, 25), -- Auxiliary (3)
(339, 3, 25), (340, 6, 25), (341, 9, 25), (342, 15, 25), (343, 19, 25), (344, 21, 25), (345, 25, 25), (346, 30, 25), -- Security (8)
(347, 2, 25), (348, 5, 25), (349, 7, 25), (350, 10, 25), -- Technicians

-- Event 26 (Stage 10 - Capacity 150) ***
(351, 20, 26), (352, 23, 26), (353, 26, 26), -- Auxiliary (3)
(354, 34, 26), (355, 36, 26), (356, 39, 26), (357, 42, 26), (358, 45, 26), (359, 48, 26), (360, 50, 26), (361, 53, 26), -- Security (8)
(362, 12, 26), (363, 16, 26), (364, 18, 26), (365, 22, 26), -- Technicians

-- Event 27 (Stage 11 - Capacity 150) **
(366, 11, 27), (367, 14, 27), (368, 17, 27), -- Auxiliary (3)
(369, 6, 27), (370, 9, 27), (371, 15, 27), (372, 19, 27), (373, 21, 27), (374, 25, 27), (375, 30, 27), (376, 34, 27), -- Security (8)
(377, 2, 27), (378, 5, 27), (379, 7, 27), (380, 10, 27), -- Technicians

-- Event 28 (Stage 12 - Capacity 150) **
(381, 20, 28), (382, 23, 28), (383, 26, 28), -- Auxiliary (3)
(384, 3, 28), (385, 36, 28), (386, 39, 28), (387, 42, 28), (388, 45, 28), (389, 48, 28), (390, 50, 28), (391, 53, 28), -- Security (8)
(392, 12, 28), (393, 16, 28), (394, 18, 28), (395, 22, 28), -- Technicians

-- Event 29 (Stage 10 - Capacity 150) ***
(396, 11, 29), (397, 14, 29), (398, 17, 29), -- Auxiliary (3)
(399, 3, 29), (400, 6, 29), (401, 9, 29), (402, 15, 29), (403, 19, 29), (404, 21, 29), (405, 25, 29), (406, 30, 29), -- Security (8)
(407, 2, 29), (408, 5, 29), (409, 7, 29), (410, 10, 29), -- Technicians

-- Event 30 (Stage 11 - Capacity 150) ***
(411, 20, 30), (412, 23, 30), (413, 26, 30), -- Auxiliary (3)
(414, 36, 30), (415, 39, 30), (416, 42, 30), (417, 45, 30), (418, 48, 30), (419, 50, 30), (420, 53, 30), (421, 34, 30), -- Security (8)
(422, 55, 30), (423, 16, 30), (424, 18, 30), (425, 22, 30), -- Technicians

-- Event 31 (Stage 13 - Capacity 103) **
(426, 11, 31), (427, 14, 31), (428, 17, 31), -- Auxiliary (3 - 2% of 103 = 2.06 → 3)
(429, 3, 31), (430, 6, 31), (431, 9, 31), (432, 15, 31), (433, 19, 31), (434, 21, 31), -- Security (6 - 5% of 103 = 5.15 → 6)
(435, 2, 31), (436, 5, 31), (437, 7, 31), (438, 10, 31), -- Technicians

-- Event 32 (Stage 12 - Capacity 150)  **
(439, 32, 32), (440,35, 32), (441, 37, 32), -- Auxiliary (3)
(442, 34, 32), (443, 36, 32), (444, 39, 32), (445, 42, 32), (446, 45, 32), (447, 48, 32), (448, 50, 32), (449, 53, 32), -- Security (8)
(450, 46, 32), (451, 51, 32), (452, 54, 32), (453, 44, 32), -- Technicians

-- Event 33 (Stage 27 - Capacity 100) ***
(454, 11, 33), (455, 14, 33), -- Auxiliary (2)
(456, 6, 33), (457, 9, 33), (458, 15, 33), (459, 19, 33), (460, 21, 33), -- Security (5)
(461, 2, 33), (462, 5, 33), (463, 7, 33), -- Technicians

-- Event 34 (Stage 14 - Capacity 150) ***
(464, 28, 34), (465, 32, 34), (466, 35, 34), -- Auxiliary (3)
(467, 34, 34), (468, 36, 34), (469, 39, 34), (470, 42, 34), (471, 45, 34), (472, 48, 34), (473, 50, 34), (474, 53, 34), -- Security (8)
(475, 27, 34), (476, 29, 34), (477, 31, 34), (478, 33, 34), -- Technicians

-- Event 35 (Stage 12 - Capacity 150) **
(479, 11, 35), (480, 14, 35), (481, 17, 35), -- Auxiliary (3)
(482, 3, 35), (483, 6, 35), (484, 9, 35), (485, 15, 35), (486, 19, 35), (487, 21, 35), (488, 25, 35), (489, 30, 35), -- Security (8)
(490, 2, 35), (491, 5, 35), (492, 7, 35), (493, 10, 35), -- Technicians

-- Event 36 (Stage 14 - Capacity 150) **
(494, 47, 36), (495, 49, 36), (496, 52, 36), -- Auxiliary (3)
(497, 36, 36), (498, 39, 36), (499, 42, 36), (500, 45, 36), (501, 48, 36), (502, 50, 36), (503, 53, 36), (504, 34, 36), -- Security (8)
(505, 29, 36), (506, 31, 36), (507, 33, 36), (508, 38, 36), -- Technicians

-- Event 37 (Stage 15 - Capacity 120) ***
(509, 11, 37), (510, 14, 37), (511, 17, 37), -- Auxiliary (3 - 2% of 120 = 2.4 → 3)
(512, 3, 37), (513, 6, 37), (514, 9, 37), (515, 15, 37), (516, 19, 37), (517, 21, 37), (518, 25, 37), -- Security (7 - 5% of 120 = 6 → 7)
(519, 2, 37), (520, 5, 37), (521, 7, 37), (522, 10, 37), -- Technicians

-- Event 38 (Stage 30 - Capacity 140) ***
(523, 23, 38), (524, 26, 38), (525, 28, 38), -- Auxiliary (3 - 2% of 140 = 2.8 → 3)
(526, 34, 38), (527, 36, 38), (528, 39, 38), (529, 42, 38), (530, 45, 38), (531, 48, 38), (532, 50, 38), (533, 53, 38), -- Security (8 - 5% of 140 = 7 → 8)
(534, 27, 38), (535, 29, 38), (536, 31, 38), (537, 33, 38), -- Technicians

-- Event 39 (Stage 28 - Capacity 100) **
(538, 11, 39), (539, 14, 39), -- Auxiliary (2)
(540, 6, 39), (541, 9, 39), (542, 15, 39), (543, 19, 39), (544, 21, 39), -- Security (5)
(545, 2, 39), (546, 5, 39), (547, 7, 39), -- Technicians

-- Event 40 (Stage 16 - Capacity 130) **
(548, 55, 40), (549, 52, 40), (550, 49, 40), -- Auxiliary (3 - 2% of 130 = 2.6 → 3)
(551, 34, 40), (552, 36, 40), (553, 39, 40), (554, 42, 40), (555, 45, 40), (556, 48, 40), (557, 50, 40), -- Security (7 - 5% of 130 = 6.5 → 7)
(558, 38, 40), (559, 41, 40), (560, 44, 40), (561, 46, 40), -- Technicians

-- Event 41 (Stage 17 - Capacity 105) ***
(562, 11, 41), (563, 14, 41), (564, 17, 41), -- Auxiliary (3 - 2% of 105 = 2.1 → 3)
(565, 3, 41), (566, 6, 41), (567, 9, 41), (568, 15, 41), (569, 19, 41), (570, 21, 41), -- Security (6 - 5% of 105 = 5.25 → 6)
(571, 2, 41), (572, 5, 41), (573, 7, 41), (574, 10, 41), -- Technicians

-- Event 42 (Stage 18 - Capacity 100) ***
(575, 32, 42), (576, 35, 42), -- Auxiliary (2)
(577, 36, 42), (578, 39, 42), (579, 42, 42), (580, 45, 42), (581, 50, 42), -- Security (5)
(582, 31, 42), (583,33, 42), (584, 38, 42), -- Technicians

-- Event 43 (Stage 19 - Capacity 100) **
(585, 11, 43), (586, 14, 43), -- Auxiliary (2)
(587, 3, 43), (588, 6, 43), (589, 9, 43), (590, 15, 43), (591, 19, 43), -- Security (5)
(592, 2, 43), (593, 5, 43), (594, 7, 43), -- Technicians

-- Event 44 (Stage 20 - Capacity 100) **
(595, 43, 44), (596, 47, 44), -- Auxiliary (2)
(597, 34, 44), (598, 36, 44), (599, 39, 44), (600, 42, 44), (601, 45, 44), -- Security (5)
(602, 24, 44), (603, 27, 44), (604, 29, 44), -- Technicians

-- Event 45 (Stage 21 - Capacity 150) ***
(605, 8, 45), (606, 11, 45), (607, 14, 45), -- Auxiliary (3)
(608, 6, 45), (609, 9, 45), (610, 15, 45), (611, 19, 45), (612, 21, 45), (613, 25, 45), (614, 30, 45), (615, 34, 45), -- Security (8)
(616, 2, 45), (617, 5, 45), (618, 7, 45), (619, 10, 45), -- Technicians

-- Event 46 (Stage 22 - Capacity 150) ***
(620, 40, 46), (621, 43, 46), (622, 47, 46), -- Auxiliary (3)
(623, 3, 46), (624, 36, 46), (625, 39, 46), (626, 42, 46), (627, 45, 46), (628, 48, 46), (629, 50, 46), (630, 53, 46), -- Security (8)
(631, 27, 46), (632, 29, 46), (633, 31, 46), (634, 33, 46), -- Technicians

-- Event 47 (Stage 23 - Capacity 103) **
(635, 11, 47), (636, 14, 47), (637, 17, 47), -- Auxiliary (3)
(638, 3, 47), (639, 6, 47), (640, 9, 47), (641, 15, 47), (642, 19, 47), (643, 21, 47), -- Security (6)
(644, 2, 47), (645, 5, 47), (646, 7, 47), (647, 10, 47), -- Technicians

-- Event 48 (Stage 24 - Capacity 107) **
(648, 35, 48), (649, 37, 48), (650, 40, 48), -- Auxiliary (3 - 2% of 107 = 2.14 → 3)
(651, 36, 48), (652, 39, 48), (653, 42, 48), (654, 45, 48), (655, 48, 48), (656, 50, 48), -- Security (6 - 5% of 107 = 5.35 → 6)
(657, 41, 48), (658, 44, 48), (659, 46, 48), (660, 51, 48), -- Technicians

-- Event 49 (Stage 25 - Capacity 100) ***
(661, 11, 49), (662, 14, 49), -- Auxiliary (2)
(663, 3, 49), (664, 6, 49), (665, 9, 49), (666, 15, 49), (667, 19, 49), -- Security (5)
(668, 2, 49), (669, 5, 49), (670, 7, 49), -- Technicians

-- Event 50 (Stage 26 - Capacity 104) ***
(671, 17, 50), (672, 20, 50), (673, 23, 50), -- Auxiliary (3 - 2% of 104 = 2.08 → 3)
(674, 34, 50), (675, 36, 50), (676, 39, 50), (677, 42, 50), (678, 45, 50), (679, 48, 50), -- Security (6 - 5% of 104 = 5.2 → 6)
(680, 12, 50), (681, 16, 50), (682, 18, 50), (683, 22, 50); -- Technicians

INSERT INTO PerformanceTypes (type_id) VALUES
('warm-up'),
('acoustic set'),
('main act'),
('opening act'),
('release party'),
('tribute performance');

-- Premium ticket for Orchestral music (Event 46, EAN: 3934567890426)
INSERT INTO Resale_queue (EAN, sale_interest) VALUES
('3934567890426', '2026-07-10 09:15:00');

-- Premium ticket for Closing set (Event 47, EAN: 1144567890427)
INSERT INTO Resale_queue (EAN, sale_interest) VALUES
('1144567890427', '2026-07-15 11:30:00');

-- Premium ticket for Special performances (Event 48, EAN: 9944567890428)
INSERT INTO Resale_queue (EAN, sale_interest) VALUES
('9944567890428', '2026-07-18 14:45:00');

-- Premium ticket for Orchestral music (Event 46, EAN: 7934567890426)
INSERT INTO Resale_queue (EAN, sale_interest) VALUES
('7934567890426', '2026-07-20 10:20:00');

-- Premium ticket for Closing set (Event 47, EAN: 5544567890427)
INSERT INTO Resale_queue (EAN, sale_interest) VALUES
('5544567890427', '2026-07-25 08:10:00');

INSERT INTO Performance (performance_id, performer_id, event_id, type_id, start_time, end_time, image, image_caption) VALUES
-- Event 1 (2018-06-10)
(1, 1, 1, 'opening act', '2018-06-10 12:00:00', '2018-06-10 12:45:00', 'https://example.com/performance1.jpg', 'The Killers opening the festival'),
(2, 18, 1, 'main act', '2018-06-10 13:00:00', '2018-06-10 14:30:00', 'https://example.com/performance2.jpg', 'Brandon Flowers solo performance'), -- 15 min break
(3, 38, 1, 'main act', '2018-06-10 15:00:00', '2018-06-10 16:00:00', 'https://example.com/performance3.jpg', 'Taylor Swift closing the event'), -- 30 min break

-- Event 2 (2018-06-10)
(4, 2, 2, 'warm-up', '2018-06-10 13:30:00', '2018-06-10 14:15:00', 'https://example.com/performance4.jpg', 'Arctic Monkeys warming up'),
(5, 19, 2, 'main act', '2018-06-10 14:30:00', '2018-06-10 16:00:00', 'https://example.com/performance5.jpg', 'Alex Turner acoustic set'), -- 15 min break
(6, 5, 2, 'main act', '2018-06-10 16:30:00', '2018-06-10 17:30:00', 'https://example.com/performance6.jpg', 'Tame Impala closing the stage'), -- 30 min break

-- Event 3 (2018-06-11)
(7, 3, 3, 'opening act', '2018-06-11 14:00:00', '2018-06-11 14:45:00', 'https://example.com/performance7.jpg', 'Foo Fighters opening'),
(8, 20, 3, 'main act', '2018-06-11 15:00:00', '2018-06-11 16:30:00', 'https://example.com/performance8.jpg', 'Dave Grohl rocking the stage'), -- 15 min break
(9, 7, 3, 'main act', '2018-06-11 17:00:00', '2018-06-11 18:00:00', 'https://example.com/performance9.jpg', 'RHCP closing the show'), -- 30 min break

-- Event 4 (2018-06-11)
(10, 4, 4, 'warm-up', '2018-06-11 15:00:00', '2018-06-11 15:45:00', 'https://example.com/performance10.jpg', 'Florence + Machine warming up'),
(11, 21, 4, 'acoustic set', '2018-06-11 16:00:00', '2018-06-11 17:00:00', 'https://example.com/performance11.jpg', 'Florence Welch acoustic performance'), -- 15 min break
(12, 9, 4, 'main act', '2018-06-11 17:30:00', '2018-06-11 19:00:00', 'https://example.com/performance12.jpg', 'LCD Soundsystem closing'), -- 30 min break

-- Event 5 (2018-06-12)
(13, 5, 5, 'opening act', '2018-06-12 12:30:00', '2018-06-12 13:15:00', 'https://example.com/performance13.jpg', 'Tame Impala opening'),
(14, 22, 5, 'main act', '2018-06-12 13:30:00', '2018-06-12 15:00:00', 'https://example.com/performance14.jpg', 'Kevin Parker live set'), -- 15 min break
(15, 10, 5, 'main act', '2018-06-12 15:30:00', '2018-06-12 16:30:00', 'https://example.com/performance15.jpg', 'The National performing'), -- 30 min break

-- Event 6 (2018-06-12)
(16, 6, 6, 'warm-up', '2018-06-12 14:00:00', '2018-06-12 14:45:00', 'https://example.com/performance16.jpg', 'The Strokes warming up'),
(17, 23, 6, 'acoustic set', '2018-06-12 15:00:00', '2018-06-12 16:00:00', 'https://example.com/performance17.jpg', 'Julian Casablancas acoustic'), -- 15 min break
(18, 11, 6, 'main act', '2018-06-12 16:30:00', '2018-06-12 18:00:00', 'https://example.com/performance18.jpg', 'Vampire Weekend closing'), -- 30 min break

-- Event 7 (2018-06-13)
(19, 7, 7, 'opening act', '2018-06-13 13:30:00', '2018-06-13 14:15:00', 'https://example.com/performance19.jpg', 'RHCP opening'),
(20, 24, 7, 'main act', '2018-06-13 14:30:00', '2018-06-13 16:00:00', 'https://example.com/performance20.jpg', 'Anthony Kiedis performing'), -- 15 min break
(21, 8, 7, 'main act', '2018-06-13 16:30:00', '2018-06-13 17:30:00', 'https://example.com/performance21.jpg', 'Muse closing the show'), -- 30 min break

-- Event 8 (2018-06-13)
(22, 8, 8, 'warm-up', '2018-06-13 15:00:00', '2018-06-13 15:45:00', 'https://example.com/performance22.jpg', 'Muse warming up'),
(23, 23, 8, 'main act', '2018-06-13 16:00:00', '2018-06-13 17:30:00', 'https://example.com/performance23.jpg', 'Julian Casablancas solo performance'), -- 15 min break
(24, 12, 8, 'main act', '2018-06-13 18:00:00', '2018-06-13 19:00:00', 'https://example.com/performance24.jpg', 'Arcade Fire closing'), -- 30 min break

-- Event 9 (2018-06-14)
(25, 9, 9, 'opening act', '2018-06-14 12:00:00', '2018-06-14 12:45:00', 'https://example.com/performance25.jpg', 'LCD Soundsystem opening'),
(26, 26, 9, 'main act', '2018-06-14 13:00:00', '2018-06-14 14:30:00', 'https://example.com/performance26.jpg', 'James Murphy DJ set'), -- 15 min break
(27, 13, 9, 'main act', '2018-06-14 15:00:00', '2018-06-14 16:00:00', 'https://example.com/performance27.jpg', 'The Black Keys performing'), -- 30 min break

-- Event 10 (2018-06-14)
(28, 10, 10, 'warm-up', '2018-06-14 14:00:00', '2018-06-14 14:45:00', 'https://example.com/performance28.jpg', 'The National warming up'),
(29, 27, 10, 'acoustic set', '2018-06-14 15:00:00', '2018-06-14 16:00:00', 'https://example.com/performance29.jpg', 'Matt Berninger acoustic'), -- 15 min break
(30, 14, 10, 'main act', '2018-06-14 16:30:00', '2018-06-14 18:00:00', 'https://example.com/performance30.jpg', 'Phoenix closing the festival'), -- 30 min break

-- Event 11 (2019-07-05)
(31, 11, 11, 'opening act', '2019-07-05 12:00:00', '2019-07-05 12:45:00', 'https://example.com/performance31.jpg', 'Vampire Weekend opening'),
(32, 28, 11, 'main act', '2019-07-05 13:00:00', '2019-07-05 14:30:00', 'https://example.com/performance32.jpg', 'Ezra Koenig solo performance'), -- 15 min break
(33, 15, 11, 'main act', '2019-07-05 15:00:00', '2019-07-05 16:00:00', 'https://example.com/performance33.jpg', 'Interpol performing'), -- 30 min break

-- Event 12 (2019-07-05)
(34, 40, 12, 'warm-up', '2019-07-05 13:30:00', '2019-07-05 14:15:00', 'https://example.com/performance34.jpg', 'Billie Eilish warming up'),
(35, 29, 12, 'main act', '2019-07-05 14:30:00', '2019-07-05 16:00:00', 'https://example.com/performance35.jpg', 'Win Butler acoustic set'), -- 15 min break
(36, 16, 12, 'main act', '2019-07-05 16:30:00', '2019-07-05 17:30:00', 'https://example.com/performance36.jpg', 'The 1975 closing'), -- 30 min break

-- Event 13 (2019-07-06)
(37, 13, 13, 'opening act', '2019-07-06 14:00:00', '2019-07-06 14:45:00', 'https://example.com/performance37.jpg', 'The Black Keys opening'),
(38, 30, 13, 'main act', '2019-07-06 15:00:00', '2019-07-06 16:30:00', 'https://example.com/performance38.jpg', 'Dan Auerbach performing'), -- 15 min break
(39, 17, 13, 'main act', '2019-07-06 17:00:00', '2019-07-06 18:00:00', 'https://example.com/performance39.jpg', 'Queens of the Stone Age closing'), -- 30 min break

-- Event 14 (2019-07-06)
(40, 14, 14, 'warm-up', '2019-07-06 15:00:00', '2019-07-06 15:45:00', 'https://example.com/performance40.jpg', 'Phoenix warming up'),
(41, 31, 14, 'acoustic set', '2019-07-06 16:00:00', '2019-07-06 17:00:00', 'https://example.com/performance41.jpg', 'Thomas Mars acoustic'), -- 15 min break
(42, 35, 14, 'main act', '2019-07-06 17:30:00', '2019-07-06 19:00:00', 'https://example.com/performance42.jpg', 'Jack White closing'), -- 30 min break

-- Event 15 (2019-07-07)
(43, 15, 15, 'opening act', '2019-07-07 12:30:00', '2019-07-07 13:15:00', 'https://example.com/performance43.jpg', 'Interpol opening'),
(44, 32, 15, 'main act', '2019-07-07 13:30:00', '2019-07-07 15:00:00', 'https://example.com/performance44.jpg', 'Paul Banks performing'), -- 15 min break
(45, 36, 15, 'main act', '2019-07-07 15:30:00', '2019-07-07 16:30:00', 'https://example.com/performance45.jpg', 'St. Vincent closing'), -- 30 min break

-- Event 16 (2019-07-07)
(46, 40, 16, 'warm-up', '2019-07-07 14:00:00', '2019-07-07 14:45:00', 'https://example.com/performance46.jpg', 'Billie Eilish warming up'),
(47, 33, 16, 'acoustic set', '2019-07-07 15:00:00', '2019-07-07 16:00:00', 'https://example.com/performance47.jpg', 'Matty Healy acoustic'), -- 15 min break
(48, 37, 16, 'main act', '2019-07-07 16:30:00', '2019-07-07 18:00:00', 'https://example.com/performance48.jpg', 'Thom Yorke closing'), -- 30 min break

-- Event 17 (2020-08-01)
(49, 17, 17, 'opening act', '2020-08-01 13:00:00', '2020-08-01 13:45:00', 'https://example.com/performance49.jpg', 'Queens of the Stone Age opening'),
(50, 34, 17, 'main act', '2020-08-01 14:00:00', '2020-08-01 15:30:00', 'https://example.com/performance50.jpg', 'Josh Homme performing'), -- 15 min break
(51, 38, 17, 'main act', '2020-08-01 16:00:00', '2020-08-01 17:00:00', 'https://example.com/performance51.jpg', 'Taylor Swift virtual performance'), -- 30 min break

-- Event 18 (2020-08-01)
(52, 38, 18, 'warm-up', '2020-08-01 14:30:00', '2020-08-01 15:15:00', 'https://example.com/performance52.jpg', 'Taylor Swift warming up'),
(53, 39, 18, 'main act', '2020-08-01 15:30:00', '2020-08-01 17:00:00', 'https://example.com/performance53.jpg', 'Ariana Grande live'), -- 15 min break
(54, 40, 18, 'main act', '2020-08-01 17:30:00', '2020-08-01 18:30:00', 'https://example.com/performance54.jpg', 'Billie Eilish closing'), -- 30 min break

-- Event 19 (2020-08-02)
(55, 39, 19, 'opening act', '2020-08-02 12:00:00', '2020-08-02 12:45:00', 'https://example.com/performance55.jpg', 'Ariana Grande opening'),
(56, 40, 19, 'main act', '2020-08-02 13:00:00', '2020-08-02 14:30:00', 'https://example.com/performance56.jpg', 'Billie Eilish performing'), -- 15 min break
(57, 41, 19, 'main act', '2020-08-02 15:00:00', '2020-08-02 16:00:00', 'https://example.com/performance57.jpg', 'Dua Lipa closing'), -- 30 min break

-- Event 20 (2020-08-02)
(58, 42, 20, 'warm-up', '2020-08-02 13:30:00', '2020-08-02 14:15:00', 'https://example.com/performance58.jpg', 'Harry Styles warming up'),
(59, 38, 20, 'acoustic set', '2020-08-02 14:30:00', '2020-08-02 15:30:00', 'https://example.com/performance59.jpg', 'Taylor Swift acoustic'), -- 15 min break
(60, 40, 20, 'main act', '2020-08-02 16:00:00', '2020-08-02 17:30:00', 'https://example.com/performance60.jpg', 'Billie Eilish closing'), -- 30 min break

-- Event 21 (2020-08-03)
(61, 41, 21, 'opening act', '2020-08-03 12:00:00', '2020-08-03 12:45:00', 'https://example.com/performance61.jpg', 'Dua Lipa opening'),
(62, 42, 21, 'main act', '2020-08-03 13:00:00', '2020-08-03 14:30:00', 'https://example.com/performance62.jpg', 'Harry Styles performing'), -- 15 min break
(63, 43, 21, 'main act', '2020-08-03 15:00:00', '2020-08-03 16:00:00', 'https://example.com/performance63.jpg', 'Olivia Rodrigo closing'), -- 30 min break

-- Event 22 (2020-08-03)
(64, 19, 22, 'warm-up', '2020-08-03 14:00:00', '2020-08-03 14:45:00', 'https://example.com/performance64.jpg', 'Alex Turner warming up'),
(65, 26, 22, 'acoustic set', '2020-08-03 15:00:00', '2020-08-03 16:00:00', 'https://example.com/performance65.jpg', 'James Murphy acoustic'), -- 15 min break
(66, 44, 22, 'main act', '2020-08-03 16:30:00', '2020-08-03 18:00:00', 'https://example.com/performance66.jpg', 'Doja Cat closing'),-- 30 min break

-- Event 23 (2021-06-20)
(67, 43, 23, 'opening act', '2021-06-20 12:00:00', '2021-06-20 12:45:00', 'https://example.com/performance67.jpg', 'Olivia Rodrigo opening'),
(68, 44, 23, 'main act', '2021-06-20 13:00:00', '2021-06-20 14:30:00', 'https://example.com/performance68.jpg', 'Doja Cat performing'), -- 15 min break
(69, 45, 23, 'main act', '2021-06-20 15:00:00', '2021-06-20 16:00:00', 'https://example.com/performance69.jpg', 'The Weeknd closing'), -- 30 min break

-- Event 24 (2021-06-20)
(70, 23, 24, 'warm-up', '2021-06-20 13:30:00', '2021-06-20 14:15:00', 'https://example.com/performance70.jpg', 'Julian Casablancas warming up'),
(71, 24, 24, 'main act', '2021-06-20 14:30:00', '2021-06-20 16:00:00', 'https://example.com/performance71.jpg', 'Anthony Kiedis live'), -- 15 min break
(72, 46, 24, 'main act', '2021-06-20 16:30:00', '2021-06-20 17:30:00', 'https://example.com/performance72.jpg', 'Post Malone closing'), -- 30 min break

-- Event 25 (2021-06-21)
(73, 45, 25, 'opening act', '2021-06-21 12:00:00', '2021-06-21 12:45:00', 'https://example.com/performance73.jpg', 'The Weeknd opening'),
(74, 46, 25, 'main act', '2021-06-21 13:00:00', '2021-06-21 14:30:00', 'https://example.com/performance74.jpg', 'Post Malone performing'), -- 15 min break
(75, 47, 25, 'main act', '2021-06-21 15:00:00', '2021-06-21 16:00:00', 'https://example.com/performance75.jpg', 'Camila Cabello closing'), -- 30 min break

-- Event 26 (2021-06-21)
(76, 8, 26, 'warm-up', '2021-06-21 14:30:00', '2021-06-21 15:15:00', 'https://example.com/performance76.jpg', 'Muse warming up'),
(77, 5, 26, 'acoustic set', '2021-06-21 15:30:00', '2021-06-21 16:30:00', 'https://example.com/performance77.jpg', 'Tame Impala acoustic'), -- 15 min break
(78, 48, 26, 'main act', '2021-06-21 17:00:00', '2021-06-21 18:30:00', 'https://example.com/performance78.jpg', 'Shawn Mendes closing'), -- 30 min break

-- Event 27 (2022-07-11)
(79, 47, 27, 'opening act', '2022-07-11 12:00:00', '2022-07-11 12:45:00', 'https://example.com/performance79.jpg', 'Camila Cabello opening'),
(80, 48, 27, 'main act', '2022-07-11 13:00:00', '2022-07-11 14:30:00', 'https://example.com/performance80.jpg', 'Shawn Mendes performing'), -- 15 min break
(81, 49, 27, 'main act', '2022-07-11 15:00:00', '2022-07-11 16:00:00', 'https://example.com/performance81.jpg', 'Selena Gomez closing'), -- 30 min break

-- Event 28 (2022-07-11)
(82, 14, 28, 'warm-up', '2022-07-11 13:30:00', '2022-07-11 14:15:00', 'https://example.com/performance82.jpg', 'Phoinix warming up'),
(83, 15, 28, 'main act', '2022-07-11 14:30:00', '2022-07-11 16:00:00', 'https://example.com/performance83.jpg', 'Interpol live'), -- 15 min break
(84, 50, 28, 'main act', '2022-07-11 16:30:00', '2022-07-11 17:30:00', 'https://example.com/performance84.jpg', 'Justin Bieber closing'), -- 30 min break

-- Event 29 (2022-07-12)
(85, 49, 29, 'opening act', '2022-07-12 14:00:00', '2022-07-12 14:45:00', 'https://example.com/performance85.jpg', 'Selena Gomez opening'),
(86, 50, 29, 'main act', '2022-07-12 15:00:00', '2022-07-12 16:30:00', 'https://example.com/performance86.jpg', 'Justin Bieber performing'), -- 15 min break
(87, 51, 29, 'main act', '2022-07-12 17:00:00', '2022-07-12 18:00:00', 'https://example.com/performance87.jpg', 'Lady Gaga closing'), -- 30 min break

-- Event 30 (2022-07-12)
(88, 1, 30, 'warm-up', '2022-07-12 15:30:00', '2022-07-12 16:15:00', 'https://example.com/performance88.jpg', 'The Killers warming up'),
(89, 3, 30, 'acoustic set', '2022-07-12 16:30:00', '2022-07-12 17:30:00', 'https://example.com/performance89.jpg', 'Foo FIghters acoustic'), -- 15 min break
(90, 52, 30, 'main act', '2022-07-12 18:00:00', '2022-07-12 19:30:00', 'https://example.com/performance90.jpg', 'Bruno Mars closing'), -- 30 min break

-- Event 31 (2022-07-13)
(91, 51, 31, 'opening act', '2022-07-13 12:00:00', '2022-07-13 12:45:00', 'https://example.com/performance91.jpg', 'Lady Gaga opening'),
(92, 52, 31, 'main act', '2022-07-13 13:00:00', '2022-07-13 14:30:00', 'https://example.com/performance92.jpg', 'Bruno Mars performing'), -- 15 min break
(93, 53, 31, 'main act', '2022-07-13 15:00:00', '2022-07-13 16:00:00', 'https://example.com/performance93.jpg', 'Ed Sheeran closing'), -- 30 min break

-- Event 32 (2022-07-13)
(94, 31, 32, 'warm-up', '2022-07-13 13:30:00', '2022-07-13 14:15:00', 'https://example.com/performance94.jpg', 'Thomas Mars warming up'),
(95, 32, 32, 'main act', '2022-07-13 14:30:00', '2022-07-13 16:00:00', 'https://example.com/performance95.jpg', 'Paul Banks live'), -- 15 min break
(96, 54, 32, 'main act', '2022-07-13 16:30:00', '2022-07-13 17:30:00', 'https://example.com/performance96.jpg', 'Rihanna closing'), -- 30 min break

-- Event 33 (2023-05-15)
(97, 53, 33, 'opening act', '2023-05-15 12:00:00', '2023-05-15 12:45:00', 'https://example.com/performance97.jpg', 'Ed Sheeran opening'),
(98, 54, 33, 'main act', '2023-05-15 13:00:00', '2023-05-15 14:30:00', 'https://example.com/performance98.jpg', 'Rihanna performing'), -- 15 min break
(99, 55, 33, 'main act', '2023-05-15 15:00:00', '2023-05-15 16:00:00', 'https://example.com/performance99.jpg', 'Beyoncé closing'), -- 30 min break

-- Event 34 (2023-05-15)
(100, 35, 34, 'warm-up', '2023-05-15 13:00:00', '2023-05-15 13:45:00', 'https://example.com/performance100.jpg', 'Jack White warming up'),
(101, 37, 34, 'acoustic set', '2023-05-15 14:00:00', '2023-05-15 15:00:00', 'https://example.com/performance101.jpg', 'Thom York acoustic'), -- 15 min break
(102, 56, 34, 'main act', '2023-05-15 15:30:00', '2023-05-15 17:00:00', 'https://example.com/performance102.jpg', 'Katy Perry closing'), -- 30 min break

-- Event 35 (2023-05-16)
(103, 55, 35, 'opening act', '2023-05-16 14:00:00', '2023-05-16 14:45:00', 'https://example.com/performance103.jpg', 'Beyoncé opening'),
(104, 56, 35, 'main act', '2023-05-16 15:00:00', '2023-05-16 16:30:00', 'https://example.com/performance104.jpg', 'Katy Perry performing'), -- 15 min break
(105, 57, 35, 'main act', '2023-05-16 17:00:00', '2023-05-16 18:00:00', 'https://example.com/performance105.jpg', 'Adele closing'), -- 30 min break

-- Event 36 (2023-05-16)
(106, 11, 36, 'warm-up', '2023-05-16 15:00:00', '2023-05-16 15:45:00', 'https://example.com/performance106.jpg', 'Vampire Weekend warming up'),
(107, 12, 36, 'main act', '2023-05-16 16:00:00', '2023-05-16 17:30:00', 'https://example.com/performance107.jpg', 'Arcade Fire live'), -- 15 min break
(108, 58, 36, 'main act', '2023-05-16 18:00:00', '2023-05-16 19:00:00', 'https://example.com/performance108.jpg', 'Miley Cyrus closing'), -- 30 min break

-- Event 37 (2024-06-12)
(109, 57, 37, 'opening act', '2024-06-12 12:00:00', '2024-06-12 12:45:00', 'https://example.com/performance109.jpg', 'Adele opening'),
(110, 58, 37, 'main act', '2024-06-12 13:00:00', '2024-06-12 14:30:00', 'https://example.com/performance110.jpg', 'Miley Cyrus performing'), -- 15 min break
(111, 59, 37, 'main act', '2024-06-12 15:00:00', '2024-06-12 16:00:00', 'https://example.com/performance111.jpg', 'Nicki Minaj closing'), -- 30 min break

-- Event 38 (2024-06-12)
(112, 1, 38, 'warm-up', '2024-06-12 13:30:00', '2024-06-12 14:15:00', 'https://example.com/performance112.jpg', 'The Killers warming up'),
(113, 2, 38, 'main act', '2024-06-12 14:30:00', '2024-06-12 16:00:00', 'https://example.com/performance113.jpg', 'Artic Monkeys live'), -- 15 min break
(114, 60, 38, 'main act', '2024-06-12 16:30:00', '2024-06-12 17:30:00', 'https://example.com/performance114.jpg', 'Drake closing'), -- 30 min break

-- Event 39 (2025-07-08)
(115, 59, 39, 'opening act', '2025-07-08 12:00:00', '2025-07-08 12:45:00', 'https://example.com/performance115.jpg', 'Nicki Minaj opening'),
(116, 60, 39, 'main act', '2025-07-08 13:00:00', '2025-07-08 14:30:00', 'https://example.com/performance116.jpg', 'Drake performing'), -- 15 min break
(117, 61, 39, 'main act', '2025-07-08 15:00:00', '2025-07-08 16:00:00', 'https://example.com/performance117.jpg', 'Lizzo closing'), -- 30 min break

-- Event 40 (2025-07-08)
(118, 47, 40, 'warm-up', '2025-07-08 13:30:00', '2025-07-08 14:15:00', 'https://example.com/performance118.jpg', 'Camila Cabello warming up'),
(119, 48, 40, 'acoustic set', '2025-07-08 14:30:00', '2025-07-08 15:30:00', 'https://example.com/performance119.jpg', 'Shawn Mendes acoustic'), -- 15 min break
(120, 62, 40, 'main act', '2025-07-08 16:00:00', '2025-07-08 17:30:00', 'https://example.com/performance120.jpg', 'Charlie Puth closing'), -- 30 min break

-- Event 41 (2026-08-20)
(121, 61, 41, 'opening act', '2026-08-20 12:00:00', '2026-08-20 12:45:00', 'https://example.com/performance121.jpg', 'Lizzo opening'),
(122, 62, 41, 'main act', '2026-08-20 13:00:00', '2026-08-20 14:30:00', 'https://example.com/performance122.jpg', 'Charlie Puth performing'), -- 15 min break
(123, 63, 41, 'main act', '2026-08-20 15:00:00', '2026-08-20 16:00:00', 'https://example.com/performance123.jpg', 'Halsey closing'), -- 30 min break

-- Event 42 (2026-08-20)
(124, 40, 42, 'warm-up', '2026-08-20 13:30:00', '2026-08-20 14:15:00', 'https://example.com/performance124.jpg', 'Billie Eilish warming up'),
(125, 43, 42, 'main act', '2026-08-20 14:30:00', '2026-08-20 16:00:00', 'https://example.com/performance125.jpg', 'Olivia Rodrigo live'), -- 15 min break
(126, 64, 42, 'main act', '2026-08-20 16:30:00', '2026-08-20 17:30:00', 'https://example.com/performance126.jpg', 'Zayn closing'), -- 30 min break

-- Event 43 (2026-08-21)
(127, 63, 43, 'opening act', '2026-08-21 14:00:00', '2026-08-21 14:45:00', 'https://example.com/performance127.jpg', 'Halsey opening'),
(128, 64, 43, 'main act', '2026-08-21 15:00:00', '2026-08-21 16:30:00', 'https://example.com/performance128.jpg', 'Zayn performing'), -- 15 min break
(129, 65, 43, 'main act', '2026-08-21 17:00:00', '2026-08-21 18:00:00', 'https://example.com/performance129.jpg', 'Lil Nas X closing'), -- 30 min break

-- Event 44 (2026-08-21)
(130, 40, 44, 'warm-up', '2026-08-21 15:30:00', '2026-08-21 16:15:00', 'https://example.com/performance130.jpg', 'Billie Eilish warming up'),
(131, 47, 44, 'acoustic set', '2026-08-21 16:30:00', '2026-08-21 17:30:00', 'https://example.com/performance131.jpg', 'Camila Cabello acoustic'), -- 15 min break
(132, 66, 44, 'main act', '2026-08-21 18:00:00', '2026-08-21 19:30:00', 'https://example.com/performance132.jpg', 'Sam Smith closing'), -- 30 min break

-- Event 45 (2026-08-22)
(133, 65, 45, 'opening act', '2026-08-22 12:00:00', '2026-08-22 12:45:00', 'https://example.com/performance133.jpg', 'Lil Nas X opening'),
(134, 66, 45, 'main act', '2026-08-22 13:00:00', '2026-08-22 14:30:00', 'https://example.com/performance134.jpg', 'Sam Smith performing'), -- 15 min break
(135, 67, 45, 'main act', '2026-08-22 15:00:00', '2026-08-22 16:00:00', 'https://example.com/performance135.jpg', 'SZA closing'), -- 30 min break

-- Event 46 (2026-08-22)
(136, 48, 46, 'warm-up', '2026-08-22 13:00:00', '2026-08-22 13:45:00', 'https://example.com/performance136.jpg', 'Shawn Mendes warming up'),
(137, 43, 46, 'main act', '2026-08-22 14:00:00', '2026-08-22 15:30:00', 'https://example.com/performance137.jpg', 'Olivia Rodrigo live'), -- 15 min break
(138, 1, 46, 'main act', '2026-08-22 16:00:00', '2026-08-22 17:00:00', 'https://example.com/performance138.jpg', 'The Killers closing'), -- 30 min break

-- Event 47 (2026-08-23)
(139, 67, 47, 'opening act', '2026-08-23 14:00:00', '2026-08-23 14:45:00', 'https://example.com/performance139.jpg', 'SZA opening'),
(140, 1, 47, 'main act', '2026-08-23 15:00:00', '2026-08-23 16:30:00', 'https://example.com/performance140.jpg', 'The Killers performing'), -- 15 min break
(141, 2, 47, 'main act', '2026-08-23 17:00:00', '2026-08-23 18:00:00', 'https://example.com/performance141.jpg', 'Arctic Monkeys closing'), -- 30 min break

-- Event 48 (2026-08-23)
(142, 40, 48, 'warm-up', '2026-08-23 15:00:00', '2026-08-23 15:45:00', 'https://example.com/performance142.jpg', 'Billie Eilish warming up'),
(143, 65, 48, 'main act', '2026-08-23 16:00:00', '2026-08-23 17:30:00', 'https://example.com/performance143.jpg', 'Lil Nas X performing'), -- 15 min break
(144, 4, 48, 'main act', '2026-08-23 18:00:00', '2026-08-23 19:00:00', 'https://example.com/performance144.jpg', 'Florence + Machine closing'), -- 30 min break

-- Event 49 (2026-08-24)
(145, 3, 49, 'opening act', '2026-08-24 12:00:00', '2026-08-24 12:45:00', 'https://example.com/performance145.jpg', 'Foo Fighters opening'),
(146, 4, 49, 'main act', '2026-08-24 13:00:00', '2026-08-24 14:30:00', 'https://example.com/performance146.jpg', 'Florence + Machine performing'), -- 15 min break
(147, 5, 49, 'main act', '2026-08-24 15:00:00', '2026-08-24 16:00:00', 'https://example.com/performance147.jpg', 'Tame Impala closing'), -- 30 min break

-- Event 50 (2026-08-24)
(148, 47, 50, 'warm-up', '2026-08-24 13:30:00', '2026-08-24 14:15:00', 'https://example.com/performance148.jpg', 'Camila Cabello warming up'),
(149, 48, 50, 'acoustic set', '2026-08-24 14:30:00', '2026-08-24 15:30:00', 'https://example.com/performance149.jpg', 'Shawn Mendes acoustic'), -- 15 min break
(150, 6, 50, 'main act', '2026-08-24 16:00:00', '2026-08-24 17:30:00', 'https://example.com/performance150.jpg', 'The Strokes closing the festival'); -- 30 min break

INSERT INTO Buyer (visitor_id, EAN, event_id, ticket_type, purchase_interest) VALUES
(1, '3934567890426', NULL, NULL, '2026-07-11 10:00:00'),
(2, '1144567890427', NULL, NULL, '2026-07-16 12:00:00'),
(3, '9944567890428', NULL, NULL, '2026-07-19 09:30:00');

-- Inserts for buyers buying directly (not from resale)
INSERT INTO Buyer (visitor_id, EAN, event_id, ticket_type, purchase_interest) VALUES
(4, NULL, 46, 'Premium', '2026-07-05 11:00:00'),
(5, NULL, 47, 'VIP', '2026-07-07 15:45:00'),
(6, NULL, 48, 'General', '2026-07-08 14:00:00');

INSERT INTO Review (EAN, performance_id, voice, light_sound, stage_presence, organisation, overall) VALUES
('1234567890123', 3, 3, 3, 4, 3, 2), -- VISITOR_ID = 1
('4234567890123', 3, 3, 4, 5, 2, 5),
('7834567890124', 51, 4, 5, 5, 5, 5),
('0934567890124', 51, 2, 3, 3, 4, 3),
('2934567890124', 52, 1, 1, 2, 3, 1),
('2244567890124', 59, 3, 4, 5, 3, 3),
('1115567890124', 85, 4, 5, 2, 3, 4), -- VISITOR_ID = 1
('1115567890124', 86, 3, 4, 5, 2, 3); -- VISITOR_ID = 1


