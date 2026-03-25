-- Note: core tables(characters, movies, places, spells) 
-- were created via the ETL piepline (see etl.py) 
-- schema docuumented here for reference
-- Junction tables were created manually 

-- characters <-> spells junction table
CREATE TABLE character_spells(
	character_id INT REFERENCES characters(character_id),
	spell_id INT REFERENCES spells(spell_id),
	PRIMARY KEY (character_id, spell_id)
);

-- characters <-> movies junction table
CREATE TABLE character_movies(
	character_id INT REFERENCES characters(character_id),
	movie_id INT REFERENCES movies(movie_id),
	PRIMARY KEY (character_id, movie_id)
);

-- characters <-> places junction table
CREATE TABLE character_places(
	character_id INT REFERENCES characters(character_id),
	places_id INT REFERENCES places(place_id),
	PRIMARY KEY (character_id, place_id)
);

-- spells <-> movies junction table
CREATE TABLE spells_movies(
	spell_id INT REFERENCES spells(spell_id),
	movie_id INT REFERENCES movies(movie_id),
	PRIMARY KEY(spell_id, movie_id)
);

-- places <-> movies junction table
CREATE TABLE places_movies(
	place_id INT REFERENCES places(place_id),
	movie_id INT REFERENCES movies(movie_id),
	PRIMARY KEY(place_id, movie_id)
);
