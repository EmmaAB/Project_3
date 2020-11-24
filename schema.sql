DROP TABLE jeopardy_new;

CREATE TABLE jeopardy_new (
	show_number INTEGER NOT NULL, 
	air_date VARCHAR NOT NULL,
	round VARCHAR NOT NULL,
	category VARCHAR NOT NULL,
	value VARCHAR,
	year INTEGER NOT NULL,
	month INTEGER NOT NULL,
	question VARCHAR NOT NULL,
 	answer VARCHAR NOT NULL
);

SELECT * FROM jeopardy_new;

SELECT * FROM jeopardy_new
WHERE round = 'Final Jeopardy'

DELETE FROM jeopardy_new
-- WHERE round = 'Final Jeopardy!'
WHERE round = 'Tiebreaker';