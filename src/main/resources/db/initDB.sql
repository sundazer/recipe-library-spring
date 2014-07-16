DROP TABLE recipes IF EXISTS;

CREATE TABLE recipes ( 
	id				INTEGER IDENTITY PRIMARY KEY,
	name			VARCHAR(50),
	description		VARCHAR(500),
	instructions	VARCHAR(2000)
);