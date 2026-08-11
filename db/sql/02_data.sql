--
-- Initial values for table roles
--
INSERT INTO roles (ID, NAME) VALUES (1, 'ADMIN');
INSERT INTO roles (ID, NAME) VALUES (2, 'USER');

--
-- Initial values for table refreshtoken_seq
--
INSERT INTO refreshtoken_seq VALUES (1);

--
-- Initial values for table users
--
INSERT INTO users (USERNAME, PASSWORD) VALUES ('admin', '$2a$10$PnY4vgD0A3/0KdX9uany6.8HVPOrois9PPPu3u9wOYMgrg2RG2mBG');

--
-- Initial values for table users_roles_xref
--
INSERT INTO users_roles_xref (USER_ID, ROLE_ID) VALUES (
    (SELECT ID FROM users WHERE USERNAME = 'admin'),
    (SELECT ID FROM roles WHERE NAME = 'ADMIN')
);

--
-- Initial values for table movie_genre
--
INSERT INTO movie_genre (ID, NAME) VALUES (1, 'Action');
INSERT INTO movie_genre (ID, NAME) VALUES (2, 'Abenteuer');
INSERT INTO movie_genre (ID, NAME) VALUES (3, 'Animationsfilm');
INSERT INTO movie_genre (ID, NAME) VALUES (4, 'Anime');
INSERT INTO movie_genre (ID, NAME) VALUES (5, 'Komödie');
INSERT INTO movie_genre (ID, NAME) VALUES (6, 'Kriminalität');
INSERT INTO movie_genre (ID, NAME) VALUES (7, 'Dokumentarfilm');
INSERT INTO movie_genre (ID, NAME) VALUES (8, 'Drama');
INSERT INTO movie_genre (ID, NAME) VALUES (9, 'Familie');
INSERT INTO movie_genre (ID, NAME) VALUES (10, 'Fantasy');
INSERT INTO movie_genre (ID, NAME) VALUES (11, 'Spielshow');
INSERT INTO movie_genre (ID, NAME) VALUES (12, 'Horror');
INSERT INTO movie_genre (ID, NAME) VALUES (13, 'Musik');
INSERT INTO movie_genre (ID, NAME) VALUES (14, 'Mysterium');
INSERT INTO movie_genre (ID, NAME) VALUES (15, 'Reality-TV');
INSERT INTO movie_genre (ID, NAME) VALUES (16, 'Romanze');
INSERT INTO movie_genre (ID, NAME) VALUES (17, 'Sci-Fi');
INSERT INTO movie_genre (ID, NAME) VALUES (18, 'Kurzfilm');
INSERT INTO movie_genre (ID, NAME) VALUES (19, 'Sport');
INSERT INTO movie_genre (ID, NAME) VALUES (20, 'Thriller');
INSERT INTO movie_genre (ID, NAME) VALUES (21, 'Western');
INSERT INTO movie_genre (ID, NAME) VALUES (22, 'Geschichte');
INSERT INTO movie_genre (ID, NAME) VALUES (23, 'Biographie');
INSERT INTO movie_genre (ID, NAME) VALUES (24, 'Krieg');
INSERT INTO movie_genre (ID, NAME) VALUES (25, 'Talk-Show');
INSERT INTO movie_genre (ID, NAME) VALUES (26, 'Gangster');
INSERT INTO movie_genre (ID, NAME) VALUES (27, 'Superheld');
INSERT INTO movie_genre (ID, NAME) VALUES (28, 'Kampfkünste');
INSERT INTO movie_genre (ID, NAME) VALUES (29, 'Cyberpunk');

--
-- Initial values for table game_genre
--
INSERT INTO game_genre (ID, NAME) VALUES (1, 'Abenteuer');
INSERT INTO game_genre (ID, NAME) VALUES (2, 'Action');
INSERT INTO game_genre (ID, NAME) VALUES (3, 'Arena');
INSERT INTO game_genre (ID, NAME) VALUES (4, 'Aufbau');
INSERT INTO game_genre (ID, NAME) VALUES (5, 'Battle Royale');
INSERT INTO game_genre (ID, NAME) VALUES (6, 'Beat em Up');
INSERT INTO game_genre (ID, NAME) VALUES (7, 'Brettspiel');
INSERT INTO game_genre (ID, NAME) VALUES (8, 'Clicker/Idle');
INSERT INTO game_genre (ID, NAME) VALUES (9, 'Crafting');
INSERT INTO game_genre (ID, NAME) VALUES (10, 'Dating-Sim');
INSERT INTO game_genre (ID, NAME) VALUES (11, 'Deckbuilding');
INSERT INTO game_genre (ID, NAME) VALUES (12, 'Escape Game');
INSERT INTO game_genre (ID, NAME) VALUES (13, 'Gesellschaftsspiel');
INSERT INTO game_genre (ID, NAME) VALUES (14, 'Hack and Slash');
INSERT INTO game_genre (ID, NAME) VALUES (15, 'Horror');
INSERT INTO game_genre (ID, NAME) VALUES (16, 'Indie');
INSERT INTO game_genre (ID, NAME) VALUES (17, 'Jump & Run');
INSERT INTO game_genre (ID, NAME) VALUES (18, 'Kampfspiel');
INSERT INTO game_genre (ID, NAME) VALUES (19, 'Kreaturensammler');
INSERT INTO game_genre (ID, NAME) VALUES (20, 'Kriegspiel');
INSERT INTO game_genre (ID, NAME) VALUES (21, 'Laufsimulation');
INSERT INTO game_genre (ID, NAME) VALUES (22, 'Looter-Shooter');
INSERT INTO game_genre (ID, NAME) VALUES (23, 'Metroidvania');
INSERT INTO game_genre (ID, NAME) VALUES (24, 'MMO');
INSERT INTO game_genre (ID, NAME) VALUES (25, 'MOBA');
INSERT INTO game_genre (ID, NAME) VALUES (26, 'Mystery');
INSERT INTO game_genre (ID, NAME) VALUES (27, 'Open World');
INSERT INTO game_genre (ID, NAME) VALUES (28, 'Point & Click');
INSERT INTO game_genre (ID, NAME) VALUES (29, 'Puzzle');
INSERT INTO game_genre (ID, NAME) VALUES (30, 'Rennspiel');
INSERT INTO game_genre (ID, NAME) VALUES (31, 'Rhythmus');
INSERT INTO game_genre (ID, NAME) VALUES (32, 'Roguelike');
INSERT INTO game_genre (ID, NAME) VALUES (33, 'Roguelite');
INSERT INTO game_genre (ID, NAME) VALUES (34, 'Rollenspiel');
INSERT INTO game_genre (ID, NAME) VALUES (35, 'Rundenbasiert');
INSERT INTO game_genre (ID, NAME) VALUES (36, 'Sandbox');
INSERT INTO game_genre (ID, NAME) VALUES (37, 'Schleichspiel');
INSERT INTO game_genre (ID, NAME) VALUES (38, 'Shoot em up');
INSERT INTO game_genre (ID, NAME) VALUES (39, 'Shooter');
INSERT INTO game_genre (ID, NAME) VALUES (40, 'Simulation');
INSERT INTO game_genre (ID, NAME) VALUES (41, 'Soulslike');
INSERT INTO game_genre (ID, NAME) VALUES (42, 'Sport');
INSERT INTO game_genre (ID, NAME) VALUES (43, 'Strategie');
INSERT INTO game_genre (ID, NAME) VALUES (44, 'Survival');
INSERT INTO game_genre (ID, NAME) VALUES (45, 'Tower Defense');
INSERT INTO game_genre (ID, NAME) VALUES (46, 'Visual Novel');
INSERT INTO game_genre (ID, NAME) VALUES (47, 'Fantasy');

--
-- Initial values for table game_platform
--
INSERT INTO game_platform (ID, NAME) VALUES (1, 'PC');
INSERT INTO game_platform (ID, NAME) VALUES (2, 'PS5');
INSERT INTO game_platform (ID, NAME) VALUES (3, 'PS4');
INSERT INTO game_platform (ID, NAME) VALUES (4, 'PS3');
INSERT INTO game_platform (ID, NAME) VALUES (5, 'PS2');
INSERT INTO game_platform (ID, NAME) VALUES (6, 'PSP');
INSERT INTO game_platform (ID, NAME) VALUES (7, 'GB');
INSERT INTO game_platform (ID, NAME) VALUES (8, 'GBA');
INSERT INTO game_platform (ID, NAME) VALUES (9, 'GBC');
INSERT INTO game_platform (ID, NAME) VALUES (10, 'SNES');
INSERT INTO game_platform (ID, NAME) VALUES (11, 'Switch');
INSERT INTO game_platform (ID, NAME) VALUES (12, 'Switch 2');
INSERT INTO game_platform (ID, NAME) VALUES (13, 'XBOX360');
INSERT INTO game_platform (ID, NAME) VALUES (14, 'XBOX One');
INSERT INTO game_platform (ID, NAME) VALUES (15, 'XBOX X/S');