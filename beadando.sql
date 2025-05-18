CREATE TABLE TEAMS(
    TEAM_ID INT PRIMARY KEY,
    TEAM_NAME VARCHAR(255),
    TEAM_CODE VARCHAR(3),
    BUDGET INT
);

CREATE TABLE PLAYERS (
    PLAYER_ID INT PRIMARY KEY,
    TEAM_ID INT,
    PLAYER_NAME VARCHAR(255),
    PLAYER_POS VARCHAR(2),
    AGE INT,
    PRICE INT,
    FOREIGN KEY (TEAM_ID) REFERENCES TEAMS(TEAM_ID)
);
CREATE TABLE PLAYERS_STAT (
    PLAYER_ID INT PRIMARY KEY,
    GOALS INT,
    ASSISTS INT,
    YELLOW_CARDS INT,
    RED_CARDS INT,
    FOREIGN KEY (PLAYER_ID) REFERENCES PLAYERS(PLAYER_ID)
);

CREATE TABLE CHAMPIONSHIP (
    TEAM_ID INT PRIMARY KEY,
    WIN INT,
    DRAW INT,
    LOSE INT,
    POINTS INT,
    FOREIGN KEY (TEAM_ID) REFERENCES TEAMS(TEAM_ID)
);

CREATE TABLE MATCHES (
    MATCH_ID INT PRIMARY KEY,
    TEAM1 INT,
    TEAM2 INT,
    HOME_GOALS INT,
    GUEST_GOALS INT,
    FOREIGN KEY (TEAM1) REFERENCES TEAMS(TEAM_ID),
    FOREIGN KEY (TEAM2) REFERENCES TEAMS(TEAM_ID)
);

INSERT INTO TEAMS (TEAM_ID, TEAM_NAME, TEAM_CODE, BUDGET) VALUES
(1, 'Real Madrid CF', 'RMA', 872),
(2, 'Barcelona FC', 'BAR', 476),
(3, 'Manchester City FC', 'MCI', 255),
(4, 'Ferencvaros TC', 'FTC', 39),
(5, 'Corvinus All Stars', 'CAS', 21);

INSERT INTO PLAYERS (PLAYER_ID, TEAM_ID, PLAYER_NAME, PLAYER_POS, AGE, PRICE) VALUES
(1, 1, 'Thibaut Courtois', 'GK', 32 , 110),
(2, 1, 'Antonio Rudiger', 'CB', 32 , 120),
(3, 1, 'Arda Guler', 'LM', 20 , 20),
(4, 1, 'Frederico Valverde', 'RM', 26 , 105),
(5, 1, 'Jude Bellingham', 'CM', 21 , 150),
(6, 1, 'Kylian Mbappe', 'ST', 26 , 180),
(7, 1, 'Eduardo Camavinga', 'CM', 22 , 80),
(8, 1, 'Eder Militao', 'CB', 27 , 107),
(9, 2, 'Inaki Pena', 'GK', 26 , 40),
(10, 2, 'Pau Cubarsi', 'CB', 21 , 65),
(11, 2, 'Lamine Yamal', 'LM', 17 , 125),
(12, 2, 'Dani Olmo ', 'RM', 26 , 80),
(13, 2, 'Frenkie de Jong', 'CM', 27 , 75),
(14, 2, 'Robert Lewandowski', 'ST', 36 , 90),
(15, 2, 'Marc Casado', 'CM', 22 , 26),
(16, 2, 'Ronald Araujo ', 'CB', 26 , 75),
(17, 3, 'Ederson', 'GK', 31 , 45),
(18, 3, 'Ruben Dias', 'CB', 27 , 50),
(19, 3, 'Phil Foden', 'LM', 24 , 60),
(20, 3, 'Bernardo Silva', 'RM', 30 , 55),
(21, 3, 'Kevin De Bruyne', 'CM', 33 , 70),
(22, 3, 'Haaland', 'ST', 24 , 90),
(23, 3, 'Mateo Kovacic', 'CM', 30 , 35),
(24, 3, 'John Stones', 'CB', 30 , 40),
(25, 4, 'Dibusz Denes', 'GK', 34 , 4),
(26, 4, 'Ibrahim Cisse', 'CB', 20 , 5),
(27, 4, 'Aleksandar Cirkovic', 'LM', 21 , 4),
(28, 4, 'Adama Traore', 'RM', 29 , 6),
(29, 4, 'Mohammed Abu Fani', 'CM', 28 , 5),
(30, 4, 'Barnabas Varga', 'ST', 27 , 7),
(31, 4, 'Mohamed Ali Ben Romdhane', 'CM', 24 , 4),
(32, 4, 'Stefan Gartenmann', 'CB', 26, 4),
(33, 5, 'Kosztel Peti', 'ST', 20 , 2),
(34, 5, 'Janosa Beni', 'CB', 19, 5),
(35, 5, 'Krizbai Csabi', 'LM', 19, 3),
(36, 5, 'Kovacs Andris', 'CM', 20, 3),
(37, 5, 'Csepke Donat', 'GK', 19, 2),
(38, 5, 'Tompa Aron', 'ST', 20, 3),
(39, 5, 'Kuczi Dorina', 'RM', 21, 1),
(40, 5, 'Halasz Panna', 'CM', 19, 2);

INSERT INTO PLAYERS_STAT (PLAYER_ID, GOALS, ASSISTS, YELLOW_CARDS, RED_CARDS) VALUES
(1, 0, 0, 0, 0),
(2, 0, 0, 3, 0),
(3, 0, 0, 0, 0),
(4, 2, 0, 2, 0),
(5, 2, 1, 0, 0),
(6, 3, 1, 0, 0),
(7, 1, 3, 0, 0),
(8, 0, 0, 1, 1),
(9, 0, 0, 1, 0),
(10, 0, 0, 3, 0),
(11, 4, 0, 2, 1),
(12, 2, 0, 1, 1),
(13, 8, 0, 3, 0),
(14, 0, 0, 1, 0),
(15, 0, 0, 1, 0),
(16, 0, 0, 4, 2),
(17, 0, 0, 3, 0),
(18, 0, 0, 4, 0),
(19, 2, 0, 0, 0),
(20, 0, 1, 2, 1),
(21, 0, 3, 0, 0),
(22, 2, 0, 0, 0),
(23, 0, 0, 0, 0),
(24, 0, 0, 3, 0),
(25, 0, 0, 0, 0),
(26, 0, 0, 0, 0),
(27, 0, 3, 0, 0),
(28, 0, 4, 0, 0),
(29, 0, 5, 0, 0),
(30, 12, 0, 0, 0),
(31, 0, 0, 0, 0),
(32, 0, 0, 0, 0),
(33, 5, 2, 1, 0),
(34, 2, 4, 5, 0),
(35, 2, 2, 2, 1),
(36, 2, 4, 1, 0),
(37, 1, 0, 0, 0),
(38, 3, 1, 1, 0),
(39, 0, 1, 4, 1),
(40, 0, 1, 0, 0);

INSERT INTO CHAMPIONSHIP (TEAM_ID, WIN, DRAW, LOSE, POINTS) VALUES
(1, 2, 2, 4, 8),
(2, 3, 1, 4, 10),
(3, 1, 4, 3, 7),
(4, 4, 2, 2, 14),
(5, 5, 1, 2, 16);

INSERT INTO MATCHES (MATCH_ID, TEAM1, TEAM2, HOME_GOALS, GUEST_GOALS) VALUES
(1,	1,2,1,0),
(2,	1,3,1,2),
(3,	1,4,3,2),
(4,	1,5,1,1),
(5,	2,3,0,0),
(6,	2,4,1,2),
(7,	2,5,3,2),
(8,	3,4,1,1),
(9,	3,5,0,1),
(10,4,5,0,2),
(12,5,2,3,2),
(13,5,4,2,0),
(14,5,3,3,0),
(15,4,1,2,1),
(16,4,2,4,3),
(17,4,3,1,1),
(18,3,1,0,0),
(19,3,2,0,4),
(20,2,1,4,0);

