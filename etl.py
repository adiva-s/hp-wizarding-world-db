import pandas as pd 

from sqlalchemy import create_engine

engine = create_engine('postgresql://postgres:postgres@localhost:5432/wizarding_world')

# Extract - load the data from the CSV files into pandas DataFrames

# load the CSVs
characters = pd.read_csv('hp_data/characters.csv', encoding='latin-1')
spells = pd.read_csv('hp_data/spells.csv', encoding='latin-1')
places = pd.read_csv('hp_data/places.csv', encoding='latin-1')
movies = pd.read_csv('hp_data/movies.csv', encoding='latin-1')

# look at the data
print("Characters:")
print(characters.head())

print("Spells:")
print(spells.head())

print("Places:")
print(places.head())

print("Movies:")
print(movies.head())

# print full column names 
print(characters.columns.tolist())
print(spells.columns.tolist())
print(places.columns.tolist())
print(movies.columns.tolist())

# Transform - clean and prepare the data for analysis

# cleaning + renaming columns 
# Characters
characters.columns = ['character_id', 'character_name', 'species', 'gender', 'house', 'patronus', 'wand_wood', 'wand_core']
characters = characters.fillna('Unknown')

# Spells
spells.columns = ['spell_id', 'incantation', 'spell_name', 'effect', 'light']
spells = spells.fillna('Unknown')

# Places
places.columns = ['place_id', 'place_name', 'place_category']
places = places.fillna('Unknown')

# Movies
movies.columns = ['movie_id', 'movie_title', 'release_year', 'runtime', 'budget', 'box_office']
movies['box_office'] = movies['box_office'].str.replace('$', '', regex=False).str.replace(',', '', regex=False).astype(float)
movies['budget'] = movies['budget'].str.replace('$', '', regex=False).str.replace(',', '', regex=False).astype(float)
movies = movies.fillna(0)

print(characters.head())
print(spells.head())
print(places.head())
print(movies.head())

# load the cleaned data into the PostgreSQL database
characters.to_sql('characters', engine, if_exists='replace', index=False)
spells.to_sql('spells', engine, if_exists='replace', index=False)
places.to_sql('places', engine, if_exists='replace', index=False)
movies.to_sql('movies', engine, if_exists='replace', index=False)
print("Data loaded into PostgreSQL database successfully!")