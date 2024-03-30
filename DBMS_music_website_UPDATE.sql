alter table musical_genres add unique (genre_name);

alter table singers add unique (name_nickname);

alter table musical_tracks add check (duration <= 100);

alter table musical_tracks drop constraint musical_tracks_music_albom_id_key;

ALTER TABLE music_albums drop COLUMN release_year;

ALTER TABLE music_albums add release_year int null 
check (release_year >=1985 and release_year <= 2024);

ALTER TABLE music_collections drop COLUMN collection_release_year;

ALTER TABLE music_collections add collection_release_year int null 
check (collection_release_year >=1985 and collection_release_year <= 2024);

