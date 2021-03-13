CREATE TABLE nba_salary3 (
  index INT  PRIMARY KEY,
  player TEXT,
  team_abv TEXT,
  salary INT
);

CREATE TABLE nba_players_of_week3 (
  index INT PRIMARY KEY,
  player TEXT,
  team_name TEXT,
  position TEXT,
  season TEXT
);

SELECT * FROM nba_salary3;

SELECT * FROM nba_players_of_week3;

SELECT nba_salary3.index, nba_salary3.player, nba_salary3.team_abv, nba_salary3.salary, nba_players_of_week3.team_name
FROM nba_salary3
RIGHT JOIN nba_players_of_week3
ON nba_players_of_week3.player = nba_salary3.player;