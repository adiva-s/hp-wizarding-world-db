-- Query 1: List all characters and their house
SELECT character_name, house FROM characters;

-- Results:
"Harry Potter"	"Gryffindor"
"Severus Snape"	"Slytherin"
"Voldemort"	"Slytherin"
"Vernon Dursley"	"Unknown"
"Dobby"	"Unknown"
"Gilderoy Lockhart"	"Ravenclaw"
"Cedric Diggory"	"Hufflepuff"
"Sybill Trelawney"	"Ravenclaw"
"Moaning Myrtle"	"Ravenclaw"

-- Query 2: Which characters are in the Ravenclaw house?
SELECT character_name FROM characters
WHERE house = 'Ravenclaw';

-- Results 
"Luna Lovegood"
"Gilderoy Lockhart"
"Sybill Trelawney"
"Moaning Myrtle"
"Quirinus Quirrell"
"Garrick Ollivander"
"Helena Ravenclaw"
"Cho Chang"
"Filius Flitwick"
"Padma Patil"
"Michael Corner"
"Marcus Belby"

-- Query 3: Which places are in what movie>
SELECT p.place_name, m.movie_title
FROM places p
JOIN place_movies pm ON p.place_id = pm.place_id
JOIN movies m ON pm.movie_id = m.movie_id;

-- Results
"Gringotts Wizarding Bank"	"Harry Potter and the Philosopher's Stone"
"Ollivanders"	"Harry Potter and the Philosopher's Stone"
"Knockturn Alley"	"Harry Potter and the Chamber of Secrets"
"Weasleys' Wizard Wheezes"	"Harry Potter and the Half-Blood Prince"
"4 Privet Drive"	"Harry Potter and the Prisoner of Azkaban"
"12 Grimmauld Place"	"Harry Potter and the Half-Blood Prince"
"Hut-on-the-Rock"	"Harry Potter and the Philosopher's Stone"
"The Burrow"	"Harry Potter and the Chamber of Secrets"

-- Query 4: Which spells have a white color?
SELECT spell_name FROM spells
WHERE spells.color = 'white';

-- Results
"Cistem Aperio"
"Wand-Lighting Charm"
"Lumos Maxima"
"Full Body-Bind Curse"
"Protego Maxima"
"Sectumsempra"
"Snake Summons Spell"

-- Query 5: List all spells Hermione knows that Ron knows
SELECT s.spell_name
FROM spells s
JOIN character_spells cs ON s.spell_id = cs.spell_id
WHERE cs.character_id = 3
AND cs.spell_id IN (
	SELECT spell_id FROM character_spells WHERE character_id = 2
);

-- Results
"Summoning Charm"
"Patronus Charm"
"Shield Charm"
"Stunning Spell"
"Levitation Charm"
