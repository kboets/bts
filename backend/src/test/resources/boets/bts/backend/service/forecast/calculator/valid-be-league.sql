-- INSERT INTO `admin` (`admin_key`, `value`, `date`) VALUES
-- ('CRON_RESULTS', 'OK', '2022-10-03 08:14:00'),
-- ('CRON_ROUNDS', 'OK', '2022-10-03 08:13:58'),
-- ('CRON_STANDINGS', 'OK', '2022-10-03 08:14:03'),
-- ('SEASON', '2022', '2022-08-18 06:03:32');

INSERT INTO `country` (`country_code`, `country`, `flag`) VALUES
    ('BE', 'Belgium', 'https://media.api-sports.io/flags/be.svg');

INSERT INTO `league` (`league_id`, `name`, `start_season`, `end_season`, `current`, `season`, `country_code`, `logo`, `flag`, `selected`) VALUES
    (4366, 'Jupiler Pro League', '2022-07-22', '2023-04-21', '1', 2022, 'BE', 'https://media.api-sports.io/football/leagues/144.png', 'https://media.api-sports.io/flags/be.svg', '1');


INSERT INTO `team` (`id`, `team_id`, `name`, `stadium_name`, `city`, `stadium_capacity`, `logo`, `league_id`) VALUES
  (77, 260, 'OH Leuven', 'King Power at Den Dreef Stadion', 'Heverlee', 12500, 'https://media.api-sports.io/football/teams/260.png', 4366),
  (78, 261, 'KVC Westerlo', 'Het Kuipje', 'Westerlo', 8035, 'https://media.api-sports.io/football/teams/261.png', 4366),
  (79, 266, 'KV Mechelen', 'AFAS-stadion Achter de Kazerne', 'Malines', 16715, 'https://media.api-sports.io/football/teams/266.png', 4366),
  (80, 554, 'Anderlecht', 'Lotto Park', 'Brussel', 28063, 'https://media.api-sports.io/football/teams/554.png', 4366),
  (81, 569, 'Club Brugge KV', 'Jan Breydelstadion', 'Brugge', 29062, 'https://media.api-sports.io/football/teams/569.png', 4366),
  (82, 600, 'Zulte Waregem', 'Elindus Arena', 'Waregem', 12300, 'https://media.api-sports.io/football/teams/600.png', 4366),
  (83, 624, 'Oostende', 'Diaz Arena', 'Oostende', 8432, 'https://media.api-sports.io/football/teams/624.png', 4366),
  (84, 631, 'Gent', 'GHELAMCO-arena', 'Gent', 20000, 'https://media.api-sports.io/football/teams/631.png', 4366),
  (85, 733, 'Standard Liege', 'Stade Maurice Dufrasne', 'Luik', 27670, 'https://media.api-sports.io/football/teams/733.png', 4366),
  (86, 734, 'Kortrijk', 'Guldensporenstadion', 'Kortrijk', 9399, 'https://media.api-sports.io/football/teams/734.png', 4366),
  (87, 735, 'St. Truiden', 'Stadion Stayen', 'St.-Trond', 14600, 'https://media.api-sports.io/football/teams/735.png', 4366),
  (88, 736, 'Charleroi', 'Stade du Pays de Charleroi', 'Charleroi', 18000, 'https://media.api-sports.io/football/teams/736.png', 4366),
  (89, 739, 'AS Eupen', 'Stadion am Kehrweg', 'Eupen', 8363, 'https://media.api-sports.io/football/teams/739.png', 4366),
  (90, 740, 'Antwerp', 'Bosuilstadion', 'Deurne', 23057, 'https://media.api-sports.io/football/teams/740.png', 4366),
  (91, 741, 'Cercle Brugge', 'Jan Breydelstadion', 'Brugge', 29062, 'https://media.api-sports.io/football/teams/741.png', 4366),
  (92, 742, 'Genk', 'Cegeka Arena', 'Genk', 24956, 'https://media.api-sports.io/football/teams/742.png', 4366),
  (93, 1393, 'Union St. Gilloise', 'Stade Joseph Mariën', 'Brussels', 9400, 'https://media.api-sports.io/football/teams/1393.png', 4366),
  (94, 10244, 'Seraing United', 'Stade du Pairay', 'Seraing', 14326, 'https://media.api-sports.io/football/teams/10244.png', 4366);

INSERT INTO `round` (`round_id`, `round`, `season`, `league_id`, `current`, `actual_date`, `round_number`) VALUES
(977, 'Regular_Season_-_1', 2022, 4366, '0', NULL, 1),
(978, 'Regular_Season_-_2', 2022, 4366, '0', NULL, 2),
(979, 'Regular_Season_-_3', 2022, 4366, '0', NULL, 3),
(980, 'Regular_Season_-_4', 2022, 4366, '0', '2022-09-01', 4),
(981, 'Regular_Season_-_5', 2022, 4366, '0', '2022-08-25', 5),
(982, 'Regular_Season_-_6', 2022, 4366, '0', '2022-09-01', 6),
(983, 'Regular_Season_-_7', 2022, 4366, '1', '2022-09-06', 7),
(984, 'Regular_Season_-_8', 2022, 4366, '0', NULL, 8),
(985, 'Regular_Season_-_9', 2022, 4366, '0', NULL, 9),
(986, 'Regular_Season_-_10', 2022, 4366, '0', NULL, 10),
(987, 'Regular_Season_-_11', 2022, 4366, '0', NULL, 11),
(988, 'Regular_Season_-_12', 2022, 4366, '0', NULL, 12),
(989, 'Regular_Season_-_13', 2022, 4366, '0', NULL, 13),
(990, 'Regular_Season_-_14', 2022, 4366, '0', NULL, 14),
(991, 'Regular_Season_-_15', 2022, 4366, '0', NULL, 15),
(992, 'Regular_Season_-_16', 2022, 4366, '0', NULL, 16),
(993, 'Regular_Season_-_17', 2022, 4366, '0', NULL, 17),
(994, 'Regular_Season_-_18', 2022, 4366, '0', NULL, 18),
(995, 'Regular_Season_-_19', 2022, 4366, '0', NULL, 19),
(996, 'Regular_Season_-_20', 2022, 4366, '0', NULL, 20),
(997, 'Regular_Season_-_21', 2022, 4366, '0', NULL, 21),
(998, 'Regular_Season_-_22', 2022, 4366, '0', NULL, 22),
(999, 'Regular_Season_-_23', 2022, 4366, '0', NULL, 23),
(1000, 'Regular_Season_-_24', 2022, 4366, '0', NULL, 24),
(1001, 'Regular_Season_-_25', 2022, 4366, '0', NULL, 25),
(1002, 'Regular_Season_-_26', 2022, 4366, '0', NULL, 26),
(1003, 'Regular_Season_-_27', 2022, 4366, '0', NULL, 27),
(1004, 'Regular_Season_-_28', 2022, 4366, '0', NULL, 28),
(1005, 'Regular_Season_-_29', 2022, 4366, '0', NULL, 29),
(1006, 'Regular_Season_-_30', 2022, 4366, '0', NULL, 30),
(1007, 'Regular_Season_-_31', 2022, 4366, '0', NULL, 31),
(1008, 'Regular_Season_-_32', 2022, 4366, '0', NULL, 32),
(1009, 'Regular_Season_-_33', 2022, 4366, '0', NULL, 33),
(1010, 'Regular_Season_-_34', 2022, 4366, '0', NULL, 34);



INSERT INTO `result` (`result_id`, `event_date`, `goals_home_team`, `goals_away_team`, `league_id`, `hometeam_id`,
                      `awayteam_id`, `round`, `status`, `round_number`)
VALUES (1373, '2022-07-22', 2, 2, 4366, 85, 84, 'Regular_Season_-_1', 'Match Finished', 1),
       (1374, '2022-07-23', 3, 1, 4366, 88, 89, 'Regular_Season_-_1', 'Match Finished', 1),
       (1375, '2022-07-23', 0, 2, 4366, 86, 77, 'Regular_Season_-_1', 'Match Finished', 1),
       (1376, '2022-07-23', 2, 0, 4366, 82, 94, 'Regular_Season_-_1', 'Match Finished', 1),
       (1377, '2022-07-23', 1, 1, 4366, 87, 93, 'Regular_Season_-_1', 'Match Finished', 1),
       (1378, '2022-07-24', 3, 2, 4366, 81, 92, 'Regular_Season_-_1', 'Match Finished', 1),
       (1379, '2022-07-24', 0, 2, 4366, 79, 90, 'Regular_Season_-_1', 'Match Finished', 1),
       (1380, '2022-07-24', 2, 0, 4366, 80, 83, 'Regular_Season_-_1', 'Match Finished', 1),
       (1381, '2022-07-24', 2, 0, 4366, 78, 91, 'Regular_Season_-_1', 'Match Finished', 1),
       (1382, '2022-07-29', 1, 0, 4366, 93, 88, 'Regular_Season_-_2', 'Match Finished', 2),
       (1383, '2022-07-30', 1, 0, 4366, 91, 80, 'Regular_Season_-_2', 'Match Finished', 2),
       (1384, '2022-07-30', 2, 1, 4366, 83, 79, 'Regular_Season_-_2', 'Match Finished', 2),
       (1385, '2022-07-30', 2, 0, 4366, 77, 78, 'Regular_Season_-_2', 'Match Finished', 2),
       (1386, '2022-07-30', 1, 1, 4366, 84, 87, 'Regular_Season_-_2', 'Match Finished', 2),
       (1387, '2022-07-31', 3, 1, 4366, 92, 85, 'Regular_Season_-_2', 'Match Finished', 2),
       (1388, '2022-07-31', 2, 1, 4366, 89, 81, 'Regular_Season_-_2', 'Match Finished', 2),
       (1389, '2022-07-31', 0, 1, 4366, 94, 86, 'Regular_Season_-_2', 'Match Finished', 2),
       (1390, '2022-07-31', 1, 0, 4366, 90, 82, 'Regular_Season_-_2', 'Match Finished', 2),
       (1391, '2022-08-05', 1, 1, 4366, 81, 82, 'Regular_Season_-_3', 'Match Finished', 3),
       (1392, '2022-08-06', 4, 2, 4366, 92, 89, 'Regular_Season_-_3', 'Match Finished', 3),
       (1393, '2022-08-06', 0, 0, 4366, 86, 87, 'Regular_Season_-_3', 'Match Finished', 3),
       (1394, '2022-08-06', 1, 3, 4366, 88, 83, 'Regular_Season_-_3', 'Match Finished', 3),
       (1395, '2022-08-06', 3, 0, 4366, 79, 93, 'Regular_Season_-_3', 'Match Finished', 3),
       (1396, '2022-08-07', 2, 0, 4366, 85, 91, 'Regular_Season_-_3', 'Match Finished', 3),
       (1397, '2022-08-07', 2, 1, 4366, 84, 78, 'Regular_Season_-_3', 'Match Finished', 3),
       (1398, '2022-08-07', 3, 1, 4366, 80, 94, 'Regular_Season_-_3', 'Match Finished', 3),
       (1399, '2022-08-07', 4, 2, 4366, 90, 77, 'Regular_Season_-_3', 'Match Finished', 3),
       (1400, '2022-08-12', 1, 3, 4366, 83, 84, 'Regular_Season_-_4', 'Match Finished', 4),
       (1401, '2022-08-13', 4, 2, 4366, 78, 85, 'Regular_Season_-_4', 'Match Finished', 4),
       (1402, '2022-08-13', 0, 0, 4366, 91, 79, 'Regular_Season_-_4', 'Match Finished', 4),
       (1403, '2022-08-13', 0, 1, 4366, 94, 88, 'Regular_Season_-_4', 'Match Finished', 4),
       (1404, '2022-08-13', 2, 1, 4366, 93, 86, 'Regular_Season_-_4', 'Match Finished', 4),
       (1405, '2022-08-14', 0, 3, 4366, 87, 80, 'Regular_Season_-_4', 'Match Finished', 4),
       (1406, '2022-08-14', 0, 1, 4366, 89, 90, 'Regular_Season_-_4', 'Match Finished', 4),
       (1407, '2022-08-14', 0, 3, 4366, 77, 81, 'Regular_Season_-_4', 'Match Finished', 4),
       (1408, '2022-08-14', 1, 4, 4366, 82, 92, 'Regular_Season_-_4', 'Match Finished', 4),
       (1409, '2022-08-19', 1, 3, 4366, 89, 94, 'Regular_Season_-_5', 'Match Finished', 5),
       (1410, '2022-08-20', 0, 1, 4366, 83, 87, 'Regular_Season_-_5', 'Match Finished', 5),
       (1411, '2022-08-20', 2, 1, 4366, 92, 91, 'Regular_Season_-_5', 'Match Finished', 5),
       (1412, '2022-08-21', 2, 1, 4366, 81, 86, 'Regular_Season_-_5', 'Match Finished', 5),
       (1413, '2022-08-21', 1, 3, 4366, 82, 88, 'Regular_Season_-_5', 'Match Finished', 5),
       (1414, '2022-08-21', 1, 3, 4366, 85, 77, 'Regular_Season_-_5', 'Match Finished', 5),
       (1415, '2022-08-21', 5, 4, 4366, 79, 78, 'Regular_Season_-_5', 'Match Finished', 5),
       (1416, '2022-08-26', 1, 3, 4366, 88, 81, 'Regular_Season_-_6', 'Match Finished', 6),
       (1417, '2022-08-27', 0, 4, 4366, 94, 92, 'Regular_Season_-_6', 'Match Finished', 6),
       (1418, '2022-08-27', 1, 1, 4366, 91, 82, 'Regular_Season_-_6', 'Match Finished', 6),
       (1419, '2022-08-27', 2, 1, 4366, 77, 83, 'Regular_Season_-_6', 'Match Finished', 6),
       (1420, '2022-08-27', 3, 1, 4366, 87, 79, 'Regular_Season_-_6', 'Match Finished', 6),
       (1421, '2022-08-28', 1, 2, 4366, 84, 90, 'Regular_Season_-_6', 'Match Finished', 6),
       (1422, '2022-08-28', 0, 1, 4366, 86, 85, 'Regular_Season_-_6', 'Match Finished', 6),
       (1423, '2022-08-28', 2, 1, 4366, 93, 80, 'Regular_Season_-_6', 'Match Finished', 6),
       (1424, '2022-08-28', 0, 1, 4366, 78, 89, 'Regular_Season_-_6', 'Match Finished', 6),
       (1425, '2022-08-31', 4, 2, 4366, 90, 93, 'Regular_Season_-_5', 'Match Finished', 5),
       (1426, '2022-09-01', 0, 1, 4366, 80, 84, 'Regular_Season_-_5', 'Match Finished', 5),
       (1427, '2022-09-02', 4, 0, 4366, 81, 91, 'Regular_Season_-_7', 'Match Finished', 7),
       (1428, '2022-09-03', 0, 0, 4366, 92, 87, 'Regular_Season_-_7', 'Match Finished', 7),
       (1429, '2022-09-03', 2, 3, 4366, 79, 94, 'Regular_Season_-_7', 'Match Finished', 7),
       (1430, '2022-09-03', 0, 1, 4366, 89, 86, 'Regular_Season_-_7', 'Match Finished', 7),
       (1431, '2022-09-03', 1, 0, 4366, 85, 83, 'Regular_Season_-_7', 'Match Finished', 7),
       (1432, '2022-09-04', 2, 2, 4366, 80, 77, 'Regular_Season_-_7', 'Match Finished', 7),
       (1433, '2022-09-04', 3, 0, 4366, 90, 78, 'Regular_Season_-_7', 'Match Finished', 7),
       (1434, '2022-09-04', 2, 1, 4366, 88, 84, 'Regular_Season_-_7', 'Match Finished', 7),
       (1435, '2022-09-04', 1, 3, 4366, 82, 93, 'Regular_Season_-_7', 'Match Finished', 7);

INSERT INTO algorithm (algorithm_id, name, type, home_win, home_lose, home_draw, away_win, away_lose, away_draw, home_bonus, away_malus, current, threshold)
VALUES (1, 'init', 'WIN', 20, 5, 10, 30, 10, 15, 10, -10, '1', 100);

INSERT INTO standing (standing_id, league_id, team_id, rank, points, last_updated, round,
                      all_match_played, all_win, all_lose, all_draw, all_goals_for, all_goals_against,
                      home_match_played, home_win, home_lose, home_draw, home_goals_for,
                      home_goals_against, away_match_played, away_win, away_lose, away_draw,
                      away_goals_for, away_goals_against, round_number, season)
VALUES (573, 4366, 77, 1, 3, '2022-09-29', NULL, 1, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 2, 0, 1, 2022),
       (574, 4366, 88, 2, 3, '2022-09-29', NULL, 1, 1, 0, 0, 3, 1, 1, 1, 0, 0, 3, 1, 0, 0, 0, 0, 0, 0, 1, 2022),
       (575, 4366, 78, 3, 3, '2022-09-29', NULL, 1, 1, 0, 0, 2, 0, 1, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 2022),
       (576, 4366, 90, 4, 3, '2022-09-29', NULL, 1, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 2, 0, 1, 2022),
       (577, 4366, 80, 5, 3, '2022-09-29', NULL, 1, 1, 0, 0, 2, 0, 1, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 2022),
       (578, 4366, 81, 6, 3, '2022-09-29', NULL, 1, 1, 0, 0, 3, 2, 1, 1, 0, 0, 3, 2, 0, 0, 0, 0, 0, 0, 1, 2022),
       (579, 4366, 82, 7, 3, '2022-09-29', NULL, 1, 1, 0, 0, 2, 0, 1, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 2022),
       (580, 4366, 93, 8, 1, '2022-09-29', NULL, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 2022),
       (581, 4366, 85, 9, 1, '2022-09-29', NULL, 1, 0, 0, 1, 2, 2, 1, 0, 0, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1, 2022),
       (582, 4366, 87, 10, 1, '2022-09-29', NULL, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 2022),
       (583, 4366, 84, 11, 1, '2022-09-29', NULL, 1, 0, 0, 1, 2, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 2, 2, 1, 2022),
       (584, 4366, 94, 12, 0, '2022-09-29', NULL, 1, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 2, 1, 2022),
       (585, 4366, 83, 13, 0, '2022-09-29', NULL, 1, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 2, 1, 2022),
       (586, 4366, 86, 14, 0, '2022-09-29', NULL, 1, 0, 1, 0, 0, 2, 1, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 2022),
       (587, 4366, 92, 15, 0, '2022-09-29', NULL, 1, 0, 1, 0, 2, 3, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 2, 3, 1, 2022),
       (588, 4366, 79, 16, 0, '2022-09-29', NULL, 1, 0, 1, 0, 0, 2, 1, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 2022),
       (589, 4366, 91, 17, 0, '2022-09-29', NULL, 1, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 2, 1, 2022),
       (590, 4366, 89, 18, 0, '2022-09-29', NULL, 1, 0, 1, 0, 1, 3, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 3, 1, 2022),
       (591, 4366, 77, 1, 6, '2022-09-29', NULL, 2, 2, 0, 0, 4, 0, 1, 1, 0, 0, 2, 0, 1, 1, 0, 0, 2, 0, 2, 2022),
       (592, 4366, 90, 2, 6, '2022-09-29', NULL, 2, 2, 0, 0, 3, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 2, 0, 2, 2022),
       (593, 4366, 93, 3, 4, '2022-09-29', NULL, 2, 1, 0, 1, 2, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 2, 2022),
       (594, 4366, 88, 4, 3, '2022-09-29', NULL, 2, 1, 1, 0, 3, 2, 1, 1, 0, 0, 3, 1, 1, 0, 1, 0, 0, 1, 2, 2022),
       (595, 4366, 78, 5, 3, '2022-09-29', NULL, 2, 1, 1, 0, 2, 2, 1, 1, 0, 0, 2, 0, 1, 0, 1, 0, 0, 2, 2, 2022),
       (596, 4366, 89, 6, 3, '2022-09-29', NULL, 2, 1, 1, 0, 3, 4, 1, 1, 0, 0, 2, 1, 1, 0, 1, 0, 1, 3, 2, 2022),
       (597, 4366, 91, 7, 3, '2022-09-29', NULL, 2, 1, 1, 0, 1, 2, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 2, 2, 2022),
       (598, 4366, 80, 8, 3, '2022-09-29', NULL, 2, 1, 1, 0, 2, 1, 1, 1, 0, 0, 2, 0, 1, 0, 1, 0, 0, 1, 2, 2022),
       (599, 4366, 81, 9, 3, '2022-09-29', NULL, 2, 1, 1, 0, 4, 4, 1, 1, 0, 0, 3, 2, 1, 0, 1, 0, 1, 2, 2, 2022),
       (600, 4366, 92, 10, 3, '2022-09-29', NULL, 2, 1, 1, 0, 5, 4, 1, 1, 0, 0, 3, 1, 1, 0, 1, 0, 2, 3, 2, 2022),
       (601, 4366, 82, 11, 3, '2022-09-29', NULL, 2, 1, 1, 0, 2, 1, 1, 1, 0, 0, 2, 0, 1, 0, 1, 0, 0, 1, 2, 2022),
       (602, 4366, 83, 12, 3, '2022-09-29', NULL, 2, 1, 1, 0, 2, 3, 1, 1, 0, 0, 2, 1, 1, 0, 1, 0, 0, 2, 2, 2022),
       (603, 4366, 86, 13, 3, '2022-09-29', NULL, 2, 1, 1, 0, 1, 2, 1, 0, 1, 0, 0, 2, 1, 1, 0, 0, 1, 0, 2, 2022),
       (604, 4366, 87, 14, 2, '2022-09-29', NULL, 2, 0, 0, 2, 2, 2, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 2, 2022),
       (605, 4366, 84, 15, 2, '2022-09-29', NULL, 2, 0, 0, 2, 3, 3, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 2, 2, 2, 2022),
       (606, 4366, 85, 16, 1, '2022-09-29', NULL, 2, 0, 1, 1, 3, 5, 1, 0, 0, 1, 2, 2, 1, 0, 1, 0, 1, 3, 2, 2022),
       (607, 4366, 94, 17, 0, '2022-09-29', NULL, 2, 0, 2, 0, 0, 3, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 2, 2, 2022),
       (608, 4366, 79, 18, 0, '2022-09-29', NULL, 2, 0, 2, 0, 1, 4, 1, 0, 1, 0, 0, 2, 1, 0, 1, 0, 1, 2, 2, 2022),
       (609, 4366, 90, 1, 9, '2022-09-29', NULL, 3, 3, 0, 0, 7, 2, 2, 2, 0, 0, 5, 2, 1, 1, 0, 0, 2, 0, 3, 2022),
       (610, 4366, 77, 2, 6, '2022-09-29', NULL, 3, 2, 1, 0, 6, 4, 1, 1, 0, 0, 2, 0, 2, 1, 1, 0, 4, 4, 3, 2022),
       (611, 4366, 80, 3, 6, '2022-09-29', NULL, 3, 2, 1, 0, 5, 2, 2, 2, 0, 0, 5, 1, 1, 0, 1, 0, 0, 1, 3, 2022),
       (612, 4366, 92, 4, 6, '2022-09-29', NULL, 3, 2, 1, 0, 9, 6, 2, 2, 0, 0, 7, 3, 1, 0, 1, 0, 2, 3, 3, 2022),
       (613, 4366, 83, 5, 6, '2022-09-29', NULL, 3, 2, 1, 0, 5, 4, 1, 1, 0, 0, 2, 1, 2, 1, 1, 0, 3, 3, 3, 2022),
       (614, 4366, 84, 6, 5, '2022-09-29', NULL, 3, 1, 0, 2, 5, 4, 2, 1, 0, 1, 3, 2, 1, 0, 0, 1, 2, 2, 3, 2022),
       (615, 4366, 81, 7, 4, '2022-09-29', NULL, 3, 1, 1, 1, 5, 5, 2, 1, 0, 1, 4, 3, 1, 0, 1, 0, 1, 2, 3, 2022),
       (616, 4366, 93, 8, 4, '2022-09-29', NULL, 3, 1, 1, 1, 2, 4, 1, 1, 0, 0, 1, 0, 2, 0, 1, 1, 1, 4, 3, 2022),
       (617, 4366, 82, 9, 4, '2022-09-29', NULL, 3, 1, 1, 1, 3, 2, 1, 1, 0, 0, 2, 0, 2, 0, 1, 1, 1, 2, 3, 2022),
       (618, 4366, 85, 10, 4, '2022-09-29', NULL, 3, 1, 1, 1, 5, 5, 2, 1, 0, 1, 4, 2, 1, 0, 1, 0, 1, 3, 3, 2022),
       (619, 4366, 86, 11, 4, '2022-09-29', NULL, 3, 1, 1, 1, 1, 2, 2, 0, 1, 1, 0, 2, 1, 1, 0, 0, 1, 0, 3, 2022),
       (620, 4366, 88, 12, 3, '2022-09-29', NULL, 3, 1, 2, 0, 4, 5, 2, 1, 1, 0, 4, 4, 1, 0, 1, 0, 0, 1, 3, 2022),
       (621, 4366, 78, 13, 3, '2022-09-29', NULL, 3, 1, 2, 0, 3, 4, 1, 1, 0, 0, 2, 0, 2, 0, 2, 0, 1, 4, 3, 2022),
       (622, 4366, 89, 14, 3, '2022-09-29', NULL, 3, 1, 2, 0, 5, 8, 1, 1, 0, 0, 2, 1, 2, 0, 2, 0, 3, 7, 3, 2022),
       (623, 4366, 79, 15, 3, '2022-09-29', NULL, 3, 1, 2, 0, 4, 4, 2, 1, 1, 0, 3, 2, 1, 0, 1, 0, 1, 2, 3, 2022),
       (624, 4366, 91, 16, 3, '2022-09-29', NULL, 3, 1, 2, 0, 1, 4, 1, 1, 0, 0, 1, 0, 2, 0, 2, 0, 0, 4, 3, 2022),
       (625, 4366, 87, 17, 3, '2022-09-29', NULL, 3, 0, 0, 3, 2, 2, 1, 0, 0, 1, 1, 1, 2, 0, 0, 2, 1, 1, 3, 2022),
       (626, 4366, 94, 18, 0, '2022-09-29', NULL, 3, 0, 3, 0, 1, 6, 1, 0, 1, 0, 0, 1, 2, 0, 2, 0, 1, 5, 3, 2022),
       (627, 4366, 90, 1, 12, '2022-09-29', NULL, 4, 4, 0, 0, 8, 2, 2, 2, 0, 0, 5, 2, 2, 2, 0, 0, 3, 0, 4, 2022),
       (628, 4366, 80, 2, 9, '2022-09-29', NULL, 4, 3, 1, 0, 8, 2, 2, 2, 0, 0, 5, 1, 2, 1, 1, 0, 3, 1, 4, 2022),
       (629, 4366, 92, 3, 9, '2022-09-29', NULL, 4, 3, 1, 0, 13, 7, 2, 2, 0, 0, 7, 3, 2, 1, 1, 0, 6, 4, 4, 2022),
       (630, 4366, 84, 4, 8, '2022-09-29', NULL, 4, 2, 0, 2, 8, 5, 2, 1, 0, 1, 3, 2, 2, 1, 0, 1, 5, 3, 4, 2022),
       (631, 4366, 81, 5, 7, '2022-09-29', NULL, 4, 2, 1, 1, 8, 5, 2, 1, 0, 1, 4, 3, 2, 1, 1, 0, 4, 2, 4, 2022),
       (632, 4366, 93, 6, 7, '2022-09-29', NULL, 4, 2, 1, 1, 4, 5, 2, 2, 0, 0, 3, 1, 2, 0, 1, 1, 1, 4, 4, 2022),
       (633, 4366, 88, 7, 6, '2022-09-29', NULL, 4, 2, 2, 0, 5, 5, 2, 1, 1, 0, 4, 4, 2, 1, 1, 0, 1, 1, 4, 2022),
       (634, 4366, 77, 8, 6, '2022-09-29', NULL, 4, 2, 2, 0, 6, 7, 2, 1, 1, 0, 2, 3, 2, 1, 1, 0, 4, 4, 4, 2022),
       (635, 4366, 78, 9, 6, '2022-09-29', NULL, 4, 2, 2, 0, 7, 6, 2, 2, 0, 0, 6, 2, 2, 0, 2, 0, 1, 4, 4, 2022),
       (636, 4366, 83, 10, 6, '2022-09-29', NULL, 4, 2, 2, 0, 6, 7, 2, 1, 1, 0, 3, 4, 2, 1, 1, 0, 3, 3, 4, 2022),
       (637, 4366, 79, 11, 4, '2022-09-29', NULL, 4, 1, 2, 1, 4, 4, 2, 1, 1, 0, 3, 2, 2, 0, 1, 1, 1, 2, 4, 2022),
       (638, 4366, 91, 12, 4, '2022-09-29', NULL, 4, 1, 2, 1, 1, 4, 2, 1, 0, 1, 1, 0, 2, 0, 2, 0, 0, 4, 4, 2022),
       (639, 4366, 82, 13, 4, '2022-09-29', NULL, 4, 1, 2, 1, 4, 6, 2, 1, 1, 0, 3, 4, 2, 0, 1, 1, 1, 2, 4, 2022),
       (640, 4366, 85, 14, 4, '2022-09-29', NULL, 4, 1, 2, 1, 7, 9, 2, 1, 0, 1, 4, 2, 2, 0, 2, 0, 3, 7, 4, 2022),
       (641, 4366, 86, 15, 4, '2022-09-29', NULL, 4, 1, 2, 1, 2, 4, 2, 0, 1, 1, 0, 2, 2, 1, 1, 0, 2, 2, 4, 2022),
       (642, 4366, 89, 16, 3, '2022-09-29', NULL, 4, 1, 3, 0, 5, 9, 2, 1, 1, 0, 2, 2, 2, 0, 2, 0, 3, 7, 4, 2022),
       (643, 4366, 87, 17, 3, '2022-09-29', NULL, 4, 0, 1, 3, 2, 5, 2, 0, 1, 1, 1, 4, 2, 0, 0, 2, 1, 1, 4, 2022),
       (644, 4366, 94, 18, 0, '2022-09-29', NULL, 4, 0, 4, 0, 1, 7, 2, 0, 2, 0, 0, 2, 2, 0, 2, 0, 1, 5, 4, 2022),
       (645, 4366, 90, 1, 15, '2022-09-29', NULL, 5, 5, 0, 0, 12, 4, 3, 3, 0, 0, 9, 4, 2, 2, 0, 0, 3, 0, 5, 2022),
       (646, 4366, 92, 2, 12, '2022-09-29', NULL, 5, 4, 1, 0, 15, 8, 3, 3, 0, 0, 9, 4, 2, 1, 1, 0, 6, 4, 5, 2022),
       (647, 4366, 84, 3, 11, '2022-09-29', NULL, 5, 3, 0, 2, 9, 5, 2, 1, 0, 1, 3, 2, 3, 2, 0, 1, 6, 3, 5, 2022),
       (648, 4366, 81, 4, 10, '2022-09-29', NULL, 5, 3, 1, 1, 10, 6, 3, 2, 0, 1, 6, 4, 2, 1, 1, 0, 4, 2, 5, 2022),
       (649, 4366, 88, 5, 9, '2022-09-29', NULL, 5, 3, 2, 0, 8, 6, 2, 1, 1, 0, 4, 4, 3, 2, 1, 0, 4, 2, 5, 2022),
       (650, 4366, 77, 6, 9, '2022-09-29', NULL, 5, 3, 2, 0, 9, 8, 2, 1, 1, 0, 2, 3, 3, 2, 1, 0, 7, 5, 5, 2022),
       (651, 4366, 80, 7, 9, '2022-09-29', NULL, 5, 3, 2, 0, 8, 3, 3, 2, 1, 0, 5, 2, 2, 1, 1, 0, 3, 1, 5, 2022),
       (652, 4366, 79, 8, 7, '2022-09-29', NULL, 5, 2, 2, 1, 9, 8, 3, 2, 1, 0, 8, 6, 2, 0, 1, 1, 1, 2, 5, 2022),
       (653, 4366, 93, 9, 7, '2022-09-29', NULL, 5, 2, 2, 1, 6, 9, 2, 2, 0, 0, 3, 1, 3, 0, 2, 1, 3, 8, 5, 2022),
       (654, 4366, 78, 10, 6, '2022-09-29', NULL, 5, 2, 3, 0, 11, 11, 2, 2, 0, 0, 6, 2, 3, 0, 3, 0, 5, 9, 5, 2022),
       (655, 4366, 83, 11, 6, '2022-09-29', NULL, 5, 2, 3, 0, 6, 8, 3, 1, 2, 0, 3, 5, 2, 1, 1, 0, 3, 3, 5, 2022),
       (656, 4366, 87, 12, 6, '2022-09-29', NULL, 5, 1, 1, 3, 3, 5, 2, 0, 1, 1, 1, 4, 3, 1, 0, 2, 2, 1, 5, 2022),
       (657, 4366, 86, 13, 4, '2022-09-29', NULL, 5, 1, 3, 1, 3, 6, 2, 0, 1, 1, 0, 2, 3, 1, 2, 0, 3, 4, 5, 2022),
       (658, 4366, 91, 14, 4, '2022-09-29', NULL, 5, 1, 3, 1, 2, 6, 2, 1, 0, 1, 1, 0, 3, 0, 3, 0, 1, 6, 5, 2022),
       (659, 4366, 82, 15, 4, '2022-09-29', NULL, 5, 1, 3, 1, 5, 9, 3, 1, 2, 0, 4, 7, 2, 0, 1, 1, 1, 2, 5, 2022),
       (660, 4366, 85, 16, 4, '2022-09-29', NULL, 5, 1, 3, 1, 8, 12, 3, 1, 1, 1, 5, 5, 2, 0, 2, 0, 3, 7, 5, 2022),
       (661, 4366, 94, 17, 3, '2022-09-29', NULL, 5, 1, 4, 0, 4, 8, 2, 0, 2, 0, 0, 2, 3, 1, 2, 0, 4, 6, 5, 2022),
       (662, 4366, 89, 18, 3, '2022-09-29', NULL, 5, 1, 4, 0, 6, 12, 3, 1, 2, 0, 3, 5, 2, 0, 2, 0, 3, 7, 5, 2022),
       (663, 4366, 90, 1, 18, '2022-09-29', NULL, 6, 6, 0, 0, 14, 5, 3, 3, 0, 0, 9, 4, 3, 3, 0, 0, 5, 1, 6, 2022),
       (664, 4366, 92, 2, 15, '2022-09-29', NULL, 6, 5, 1, 0, 19, 8, 3, 3, 0, 0, 9, 4, 3, 2, 1, 0, 10, 4, 6, 2022),
       (665, 4366, 81, 3, 13, '2022-09-29', NULL, 6, 4, 1, 1, 13, 7, 3, 2, 0, 1, 6, 4, 3, 2, 1, 0, 7, 3, 6, 2022),
       (666, 4366, 77, 4, 12, '2022-09-29', NULL, 6, 4, 2, 0, 11, 9, 3, 2, 1, 0, 4, 4, 3, 2, 1, 0, 7, 5, 6, 2022),
       (667, 4366, 84, 5, 11, '2022-09-29', NULL, 6, 3, 1, 2, 10, 7, 3, 1, 1, 1, 4, 4, 3, 2, 0, 1, 6, 3, 6, 2022),
       (668, 4366, 93, 6, 10, '2022-09-29', NULL, 6, 3, 2, 1, 8, 10, 3, 3, 0, 0, 5, 2, 3, 0, 2, 1, 3, 8, 6, 2022),
       (669, 4366, 88, 7, 9, '2022-09-29', NULL, 6, 3, 3, 0, 9, 9, 3, 1, 2, 0, 5, 7, 3, 2, 1, 0, 4, 2, 6, 2022),
       (670, 4366, 80, 8, 9, '2022-09-29', NULL, 6, 3, 3, 0, 9, 5, 3, 2, 1, 0, 5, 2, 3, 1, 2, 0, 4, 3, 6, 2022),
       (671, 4366, 87, 9, 9, '2022-09-29', NULL, 6, 2, 1, 3, 6, 6, 3, 1, 1, 1, 4, 5, 3, 1, 0, 2, 2, 1, 6, 2022),
       (672, 4366, 79, 10, 7, '2022-09-29', NULL, 6, 2, 3, 1, 10, 11, 3, 2, 1, 0, 8, 6, 3, 0, 2, 1, 2, 5, 6, 2022),
       (673, 4366, 85, 11, 7, '2022-09-29', NULL, 6, 2, 3, 1, 9, 12, 3, 1, 1, 1, 5, 5, 3, 1, 2, 0, 4, 7, 6, 2022),
       (674, 4366, 78, 12, 6, '2022-09-29', NULL, 6, 2, 4, 0, 11, 12, 3, 2, 1, 0, 6, 3, 3, 0, 3, 0, 5, 9, 6, 2022),
       (675, 4366, 89, 13, 6, '2022-09-29', NULL, 6, 2, 4, 0, 7, 12, 3, 1, 2, 0, 3, 5, 3, 1, 2, 0, 4, 7, 6, 2022),
       (676, 4366, 83, 14, 6, '2022-09-29', NULL, 6, 2, 4, 0, 7, 10, 3, 1, 2, 0, 3, 5, 3, 1, 2, 0, 4, 5, 6, 2022),
       (677, 4366, 91, 15, 5, '2022-09-29', NULL, 6, 1, 3, 2, 3, 7, 3, 1, 0, 2, 2, 1, 3, 0, 3, 0, 1, 6, 6, 2022),
       (678, 4366, 82, 16, 5, '2022-09-29', NULL, 6, 1, 3, 2, 6, 10, 3, 1, 2, 0, 4, 7, 3, 0, 1, 2, 2, 3, 6, 2022),
       (679, 4366, 86, 17, 4, '2022-09-29', NULL, 6, 1, 4, 1, 3, 7, 3, 0, 2, 1, 0, 3, 3, 1, 2, 0, 3, 4, 6, 2022),
       (680, 4366, 94, 18, 3, '2022-09-29', NULL, 6, 1, 5, 0, 4, 12, 3, 0, 3, 0, 0, 6, 3, 1, 2, 0, 4, 6, 6, 2022),
       (681, 4366, 90, 1, 21, '2022-09-29', NULL, 7, 7, 0, 0, 17, 5, 4, 4, 0, 0, 12, 4, 3, 3, 0, 0, 5, 1, 7, 2022),
       (682, 4366, 81, 2, 16, '2022-09-29', NULL, 7, 5, 1, 1, 17, 7, 4, 3, 0, 1, 10, 4, 3, 2, 1, 0, 7, 3, 7, 2022),
       (683, 4366, 92, 3, 16, '2022-09-29', NULL, 7, 5, 1, 1, 19, 8, 4, 3, 0, 1, 9, 4, 3, 2, 1, 0, 10, 4, 7, 2022),
       (684, 4366, 77, 4, 13, '2022-09-29', NULL, 7, 4, 2, 1, 13, 11, 3, 2, 1, 0, 4, 4, 4, 2, 1, 1, 9, 7, 7, 2022),
       (685, 4366, 93, 5, 13, '2022-09-29', NULL, 7, 4, 2, 1, 11, 11, 3, 3, 0, 0, 5, 2, 4, 1, 2, 1, 6, 9, 7, 2022),
       (686, 4366, 88, 6, 12, '2022-09-29', NULL, 7, 4, 3, 0, 11, 10, 4, 2, 2, 0, 7, 8, 3, 2, 1, 0, 4, 2, 7, 2022),
       (687, 4366, 84, 7, 11, '2022-09-29', NULL, 7, 3, 2, 2, 11, 9, 3, 1, 1, 1, 4, 4, 4, 2, 1, 1, 7, 5, 7, 2022),
       (688, 4366, 80, 8, 10, '2022-09-29', NULL, 7, 3, 3, 1, 11, 7, 4, 2, 1, 1, 7, 4, 3, 1, 2, 0, 4, 3, 7, 2022),
       (689, 4366, 85, 9, 10, '2022-09-29', NULL, 7, 3, 3, 1, 10, 12, 4, 2, 1, 1, 6, 5, 3, 1, 2, 0, 4, 7, 7, 2022),
       (690, 4366, 87, 10, 10, '2022-09-29', NULL, 7, 2, 1, 4, 6, 6, 3, 1, 1, 1, 4, 5, 4, 1, 0, 3, 2, 1, 7, 2022),
       (691, 4366, 86, 11, 7, '2022-09-29', NULL, 7, 2, 4, 1, 4, 7, 3, 0, 2, 1, 0, 3, 4, 2, 2, 0, 4, 4, 7, 2022),
       (692, 4366, 79, 12, 7, '2022-09-29', NULL, 7, 2, 4, 1, 12, 14, 4, 2, 2, 0, 10, 9, 3, 0, 2, 1, 2, 5, 7, 2022),
       (693, 4366, 94, 13, 6, '2022-09-29', NULL, 7, 2, 5, 0, 7, 14, 3, 0, 3, 0, 0, 6, 4, 2, 2, 0, 7, 8, 7, 2022),
       (694, 4366, 78, 14, 6, '2022-09-29', NULL, 7, 2, 5, 0, 11, 15, 3, 2, 1, 0, 6, 3, 4, 0, 4, 0, 5, 12, 7, 2022),
       (695, 4366, 89, 15, 6, '2022-09-29', NULL, 7, 2, 5, 0, 7, 13, 4, 1, 3, 0, 3, 6, 3, 1, 2, 0, 4, 7, 7, 2022),
       (696, 4366, 83, 16, 6, '2022-09-29', NULL, 7, 2, 5, 0, 7, 11, 3, 1, 2, 0, 3, 5, 4, 1, 3, 0, 4, 6, 7, 2022),
       (697, 4366, 91, 17, 5, '2022-09-29', NULL, 7, 1, 4, 2, 3, 11, 3, 1, 0, 2, 2, 1, 4, 0, 4, 0, 1, 10, 7, 2022),
       (698, 4366, 82, 18, 5, '2022-09-29', NULL, 7, 1, 4, 2, 7, 13, 4, 1, 3, 0, 5, 10, 3, 0, 1, 2, 2, 3, 7, 2022),
       (699, 4366, 90, 1, 24, '2022-09-29', NULL, 8, 8, 0, 0, 19, 5, 4, 4, 0, 0, 12, 4, 4, 4, 0, 0, 7, 1, 8, 2022),
       (700, 4366, 81, 2, 19, '2022-09-29', NULL, 8, 6, 1, 1, 19, 7, 4, 3, 0, 1, 10, 4, 4, 3, 1, 0, 9, 3, 8, 2022),
       (701, 4366, 92, 3, 19, '2022-09-29', NULL, 8, 6, 1, 1, 21, 9, 4, 3, 0, 1, 9, 4, 4, 3, 1, 0, 12, 5, 8, 2022),
       (702, 4366, 77, 4, 16, '2022-09-29', NULL, 8, 5, 2, 1, 16, 13, 4, 3, 1, 0, 7, 6, 4, 2, 1, 1, 9, 7, 8, 2022),
       (703, 4366, 84, 5, 14, '2022-09-29', NULL, 8, 4, 2, 2, 13, 9, 4, 2, 1, 1, 6, 4, 4, 2, 1, 1, 7, 5, 8, 2022),
       (704, 4366, 93, 6, 13, '2022-09-29', NULL, 8, 4, 3, 1, 12, 13, 4, 3, 1, 0, 6, 4, 4, 1, 2, 1, 6, 9, 8, 2022),
       (705, 4366, 85, 7, 13, '2022-09-29', NULL, 8, 4, 3, 1, 12, 13, 4, 2, 1, 1, 6, 5, 4, 2, 2, 0, 6, 8, 8, 2022),
       (706, 4366, 88, 8, 12, '2022-09-29', NULL, 8, 4, 4, 0, 13, 13, 4, 2, 2, 0, 7, 8, 4, 2, 2, 0, 6, 5, 8, 2022),
       (707, 4366, 79, 9, 10, '2022-09-29', NULL, 8, 3, 4, 1, 16, 15, 4, 2, 2, 0, 10, 9, 4, 1, 2, 1, 6, 6, 8, 2022),
       (708, 4366, 80, 10, 10, '2022-09-29', NULL, 8, 3, 4, 1, 12, 9, 4, 2, 1, 1, 7, 4, 4, 1, 3, 0, 5, 5, 8, 2022),
       (709, 4366, 87, 11, 10, '2022-09-29', NULL, 8, 2, 2, 4, 7, 8, 4, 1, 2, 1, 5, 7, 4, 1, 0, 3, 2, 1, 8, 2022),
       (710, 4366, 78, 12, 9, '2022-09-29', NULL, 8, 3, 5, 0, 13, 16, 4, 3, 1, 0, 8, 4, 4, 0, 4, 0, 5, 12, 8, 2022),
       (711, 4366, 83, 13, 9, '2022-09-29', NULL, 8, 3, 5, 0, 8, 11, 4, 2, 2, 0, 4, 5, 4, 1, 3, 0, 4, 6, 8, 2022),
       (712, 4366, 86, 14, 7, '2022-09-29', NULL, 8, 2, 5, 1, 5, 11, 4, 0, 3, 1, 1, 7, 4, 2, 2, 0, 4, 4, 8, 2022),
       (713, 4366, 94, 15, 6, '2022-09-29', NULL, 8, 2, 6, 0, 7, 16, 4, 0, 4, 0, 0, 8, 4, 2, 2, 0, 7, 8, 8, 2022),
       (714, 4366, 89, 16, 6, '2022-09-29', NULL, 8, 2, 6, 0, 7, 14, 4, 1, 3, 0, 3, 6, 4, 1, 3, 0, 4, 8, 8, 2022),
       (715, 4366, 91, 17, 5, '2022-09-29', NULL, 8, 1, 5, 2, 3, 13, 4, 1, 1, 2, 2, 3, 4, 0, 4, 0, 1, 10, 8, 2022),
       (716, 4366, 82, 18, 5, '2022-09-29', NULL, 8, 1, 5, 2, 7, 15, 4, 1, 3, 0, 5, 10, 4, 0, 2, 2, 2, 5, 8, 2022),
       (717, 4366, 90, 1, 27, '2022-09-29', NULL, 9, 9, 0, 0, 21, 6, 5, 5, 0, 0, 14, 5, 4, 4, 0, 0, 7, 1, 9, 2022),
       (718, 4366, 92, 2, 22, '2022-09-29', NULL, 9, 7, 1, 1, 22, 9, 5, 4, 0, 1, 10, 4, 4, 3, 1, 0, 12, 5, 9, 2022),
       (719, 4366, 81, 3, 19, '2022-09-29', NULL, 9, 6, 2, 1, 19, 10, 4, 3, 0, 1, 10, 4, 5, 3, 2, 0, 9, 6, 9, 2022),
       (720, 4366, 77, 4, 17, '2022-09-29', NULL, 9, 5, 2, 2, 16, 13, 4, 3, 1, 0, 7, 6, 5, 2, 1, 2, 9, 7, 9, 2022),
       (721, 4366, 93, 5, 16, '2022-09-29', NULL, 9, 5, 3, 1, 14, 14, 4, 3, 1, 0, 6, 4, 5, 2, 2, 1, 8, 10, 9, 2022),
       (722, 4366, 85, 6, 16, '2022-09-29', NULL, 9, 5, 3, 1, 15, 13, 5, 3, 1, 1, 9, 5, 4, 2, 2, 0, 6, 8, 9, 2022),
       (723, 4366, 84, 7, 14, '2022-09-29', NULL, 9, 4, 3, 2, 13, 10, 4, 2, 1, 1, 6, 4, 5, 2, 2, 1, 7, 6, 9, 2022),
       (724, 4366, 80, 8, 13, '2022-09-29', NULL, 9, 4, 4, 1, 16, 10, 5, 3, 1, 1, 11, 5, 4, 1, 3, 0, 5, 5, 9, 2022),
       (725, 4366, 87, 9, 13, '2022-09-29', NULL, 9, 3, 2, 4, 10, 8, 4, 1, 2, 1, 5, 7, 5, 2, 0, 3, 5, 1, 9, 2022),
       (726, 4366, 88, 10, 12, '2022-09-29', NULL, 9, 4, 5, 0, 15, 16, 5, 2, 3, 0, 9, 11, 4, 2, 2, 0, 6, 5, 9, 2022),
       (727, 4366, 78, 11, 12, '2022-09-29', NULL, 9, 4, 5, 0, 16, 18, 4, 3, 1, 0, 8, 4, 5, 1, 4, 0, 8, 14, 9, 2022),
       (728, 4366, 79, 12, 11, '2022-09-29', NULL, 9, 3, 4, 2, 16, 15, 5, 2, 2, 1, 10, 9, 4, 1, 2, 1, 6, 6, 9, 2022),
       (729, 4366, 83, 13, 10, '2022-09-29', NULL, 9, 3, 5, 1, 10, 13, 4, 2, 2, 0, 4, 5, 5, 1, 3, 1, 6, 8, 9, 2022),
       (730, 4366, 86, 14, 7, '2022-09-29', NULL, 9, 2, 6, 1, 6, 15, 4, 0, 3, 1, 1, 7, 5, 2, 3, 0, 5, 8, 9, 2022),
       (731, 4366, 94, 15, 6, '2022-09-29', NULL, 9, 2, 7, 0, 8, 18, 4, 0, 4, 0, 0, 8, 5, 2, 3, 0, 8, 10, 9, 2022),
       (732, 4366, 89, 16, 6, '2022-09-29', NULL, 9, 2, 7, 0, 8, 16, 5, 1, 4, 0, 4, 8, 4, 1, 3, 0, 4, 8, 9, 2022),
       (733, 4366, 91, 17, 6, '2022-09-29', NULL, 9, 1, 5, 3, 5, 15, 5, 1, 1, 3, 4, 5, 4, 0, 4, 0, 1, 10, 9, 2022),
       (734, 4366, 82, 18, 5, '2022-09-29', NULL, 9, 1, 6, 2, 7, 18, 5, 1, 4, 0, 5, 13, 4, 0, 2, 2, 2, 5, 9, 2022);