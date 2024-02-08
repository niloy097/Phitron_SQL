CREATE TABLE players(
	
    game VARCHAR(50),
    name VARCHAR(50)

);

INSERT INTO players
(game, name)
VALUES
("badmintion", "Niloy"),
("football", "Niloy"),
("Chess", "Tahsin"),
("Cricket", "Fahim"),
("PES", "Tahsin");

SELECT name FROM players
UNION -- UNION ALL --> append the data
SELECT name FROM players;