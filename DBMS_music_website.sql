
CREATE TABLE IF NOT EXISTS musical_genres (
	genre_id SERIAL PRIMARY KEY,
	genre_name varchar(60) not null
);

CREATE TABLE IF NOT EXISTS singers (
	singer_id SERIAL PRIMARY KEY,
	name_nickname varchar(80) not null
);

CREATE TABLE IF NOT EXISTS genres_singers_id (
	genre_id INTEGER NOT NULL REFERENCES musical_genres(genre_id),
	singer_id INTEGER NOT NULL REFERENCES singers(singer_id),
	CONSTRAINT pk PRIMARY KEY (genre_id, singer_id)
);

CREATE TABLE IF NOT EXISTS music_albums (
	music_album_id SERIAL PRIMARY KEY,
	music_album_name varchar (255) not null,
	release_year date null
);

CREATE TABLE IF NOT EXISTS singers_ablums_id (
	id SERIAL PRIMARY KEY,
	music_album_id INTEGER NOT NULL REFERENCES music_albums(music_album_id),
	singer_id INTEGER NOT REFERENCES singers(singer_id)
);

CREATE TABLE IF NOT EXISTS musical_tracks (
	musical_track_id SERIAL PRIMARY KEY,
	musical_track_name varchar (255) not null,
	music_albom_id int unique not null references music_albums(music_album_id),
	duration int not null
);

CREATE TABLE IF NOT EXISTS music_collections (
	collection_id SERIAL PRIMARY KEY,
	collection_name varchar(60) not null,
	collection_release_year date null
);

CREATE TABLE IF NOT EXISTS collection_track_id (
	id SERIAL PRIMARY KEY,
	musical_track_id INTEGER NOT NULL REFERENCES musical_tracks(musical_track_id),
	collection_id INTEGER NOT NULL REFERENCES music_collections(collection_id)
);