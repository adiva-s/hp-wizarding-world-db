-- Inserts for the many-to-many relationships between characters, movies, places and spells (i.e. the junction tables)

-- Insert data into the place_movies junction table
INSERT INTO place_movies(place_id, movie_id) VALUES (2,1); 
INSERT INTO place_movies(place_id, movie_id) VALUES (4,1); 
INSERT INTO place_movies(place_id, movie_id) VALUES (3,2); 
INSERT INTO place_movies(place_id, movie_id) VALUES (6,6); 
INSERT INTO place_movies(place_id, movie_id) VALUES (8,1); 
INSERT INTO place_movies(place_id, movie_id) VALUES (8,2); 
INSERT INTO place_movies(place_id, movie_id) VALUES (8,3); 
INSERT INTO place_movies(place_id, movie_id) VALUES (8,4); 
INSERT INTO place_movies(place_id, movie_id) VALUES (8,5); 
INSERT INTO place_movies(place_id, movie_id) VALUES (8,6); 
INSERT INTO place_movies(place_id, movie_id) VALUES (8,7); 
INSERT INTO place_movies(place_id, movie_id) VALUES (7,6); 
INSERT INTO place_movies(place_id, movie_id) VALUES (10,1); 
INSERT INTO place_movies(place_id, movie_id) VALUES (17,2); 
INSERT INTO place_movies(place_id, movie_id) VALUES (17,4);

-- Insert data into the spells_movies junction table
INSERT INTO spell_movies(spell_id, movie_id) VALUES (1,1); 
INSERT INTO spell_movies(spell_id, movie_id) VALUES (2,1); 
INSERT INTO spell_movies(spell_id, movie_id) VALUES (4,1); 
INSERT INTO spell_movies(spell_id, movie_id) VALUES (18,3); 
INSERT INTO spell_movies(spell_id, movie_id) VALUES (13,4); 
INSERT INTO spell_movies(spell_id, movie_id) VALUES (7,1); 
INSERT INTO spell_movies(spell_id, movie_id) VALUES (7,4); 
INSERT INTO spell_movies(spell_id, movie_id) VALUES (11,5);

-- Insert data into the character_places junction table
INSERT INTO character_places(character_id, place_id) VALUES (1,1); 
INSERT INTO character_places(character_id, place_id) VALUES (1,2); 
INSERT INTO character_places(character_id, place_id) VALUES (1,3); 
INSERT INTO character_places(character_id, place_id) VALUES (1,4); 
INSERT INTO character_places(character_id, place_id) VALUES (2,1); 
INSERT INTO character_places(character_id, place_id) VALUES (2,2); 
INSERT INTO character_places(character_id, place_id) VALUES (2,5); 
INSERT INTO character_places(character_id, place_id) VALUES (2,6); 
INSERT INTO character_places(character_id, place_id) VALUES (3,1); 
INSERT INTO character_places(character_id, place_id) VALUES (3,7); 
INSERT INTO character_places(character_id, place_id) VALUES (3,5); 
INSERT INTO character_places(character_id, place_id) VALUES (3,13);

-- Insert data into the character_movies junction table
INSERT INTO character_movies(character_id, movie_id) VALUES (1,1); 
INSERT INTO character_movies(character_id, movie_id) VALUES (1,2); 
INSERT INTO character_movies(character_id, movie_id) VALUES (1,3); 
INSERT INTO character_movies(character_id, movie_id) VALUES (1,4); 
INSERT INTO character_movies(character_id, movie_id) VALUES (1,5); 
INSERT INTO character_movies(character_id, movie_id) VALUES (1,6); 
INSERT INTO character_movies(character_id, movie_id) VALUES (1,7); 
INSERT INTO character_movies(character_id, movie_id) VALUES (1,8); 
INSERT INTO character_movies(character_id, movie_id) VALUES (2,1); 
INSERT INTO character_movies(character_id, movie_id) VALUES (2,2); 
INSERT INTO character_movies(character_id, movie_id) VALUES (2,3); 
INSERT INTO character_movies(character_id, movie_id) VALUES (2,4); 
INSERT INTO character_movies(character_id, movie_id) VALUES (2,5); 
INSERT INTO character_movies(character_id, movie_id) VALUES (2,6); 
INSERT INTO character_movies(character_id, movie_id) VALUES (2,7); 
INSERT INTO character_movies(character_id, movie_id) VALUES (2,8); 
INSERT INTO character_movies(character_id, movie_id) VALUES (3,1); 
INSERT INTO character_movies(character_id, movie_id) VALUES (3,2); 
INSERT INTO character_movies(character_id, movie_id) VALUES (3,3); 
INSERT INTO character_movies(character_id, movie_id) VALUES (3,4); 
INSERT INTO character_movies(character_id, movie_id) VALUES (3,5); 
INSERT INTO character_movies(character_id, movie_id) VALUES (3,6); 
INSERT INTO character_movies(character_id, movie_id) VALUES (3,7); 
INSERT INTO character_movies(character_id, movie_id) VALUES (3,8);

-- Insert data into the character_spells junction table
INSERT INTO character_spells(character_id, spell_id) VALUES (1,18);
INSERT INTO character_spells(character_id, spell_id) VALUES (1,19);
INSERT INTO character_spells(character_id, spell_id) VALUES (1,31);
INSERT INTO character_spells(character_id, spell_id) VALUES (1,44);
INSERT INTO character_spells(character_id, spell_id) VALUES (2,1);
INSERT INTO character_spells(character_id, spell_id) VALUES (2,17);
INSERT INTO character_spells(character_id, spell_id) VALUES (2,34);
INSERT INTO character_spells(character_id, spell_id) VALUES (2,58);
INSERT INTO character_spells(character_id, spell_id) VALUES (3,21);
INSERT INTO character_spells(character_id, spell_id) VALUES (3,45);
INSERT INTO character_spells(character_id, spell_id) VALUES (3,38);
INSERT INTO character_spells(character_id, spell_id) VALUES (3,22);
