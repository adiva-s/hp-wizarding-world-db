-- Query 1: List all characters and their house
SELECT character_name, house FROM characters;

-- Results:
-- "Harry Potter"	"Gryffindor"
-- "Severus Snape"	"Slytherin"
-- "Voldemort"	"Slytherin"
-- "Vernon Dursley"	"Unknown"
-- "Dobby"	"Unknown"
-- "Gilderoy Lockhart"	"Ravenclaw"
-- "Cedric Diggory"	"Hufflepuff"
-- "Sybill Trelawney"	"Ravenclaw"
-- "Moaning Myrtle"	"Ravenclaw"

-- Query 2: Which characters are in the Ravenclaw house?
SELECT character_name FROM characters
WHERE house = 'Ravenclaw';

-- Results 
-- "Luna Lovegood"
-- "Gilderoy Lockhart"
-- "Sybill Trelawney"
-- "Moaning Myrtle"
-- "Quirinus Quirrell"
-- "Garrick Ollivander"
-- "Helena Ravenclaw"
-- "Cho Chang"
-- "Filius Flitwick"
-- "Padma Patil"
-- "Michael Corner"
-- "Marcus Belby"