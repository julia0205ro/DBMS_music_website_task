--The title and duration of the longest track
select musical_track_name, duration 
from musical_tracks
where duration = (select max(duration) from musical_tracks);

--Track titles with a duration of at least 3.5 minutes
select musical_track_name 
from musical_tracks
where duration >= 210;

--Album titles released between 2018 and 2020 inclusive
select collection_name 
from music_collections
where collection_release_year between 2018 and 2020;

--Performers with single-word names
select name_nickname
from singers
where name_nickname not like '% %';

--Track titles containing the word "my"
select musical_track_name
from musical_tracks
where musical_track_name like '%my%';

--The number of performers in each genre
select musical_genres.genre_name, count(genres_singers_id.singer_id)
from musical_genres
full join genres_singers_id
on musical_genres.genre_id = genres_singers_id.genre_id
group by musical_genres.genre_name;

--The number of tracks included in albums from 2019-2020
select music_albums.music_album_name, count(musical_tracks.musical_track_name)
from music_albums
join musical_tracks
on music_albums.music_album_id = musical_tracks.music_albom_id 
where release_year between 2019 and 2020
group by music_albums.music_album_name;

--The average duration of tracks per album
select music_albums.music_album_name, avg(musical_tracks.duration)
from music_albums
join musical_tracks
on music_albums.music_album_id = musical_tracks.music_albom_id 
group by music_albums.music_album_name;

--All performers who did not release albums in 2020
select singers.name_nickname, music_albums.release_year
from singers
join singers_ablums_id
on singers.singer_id = singers_ablums_id.singer_id 
join music_albums
on music_albums.music_album_id = singers_ablums_id.music_album_id 
where music_albums.release_year != 2020;

--Album titles featuring a specific performer (Sapphire)
select singers.name_nickname, music_collections.collection_name 
from singers
full join singers_ablums_id
on singers.singer_id = singers_ablums_id.singer_id 
full join musical_tracks
on singers_ablums_id.music_album_id  = musical_tracks.music_albom_id 
full join collection_track_id
on musical_tracks.musical_track_id = collection_track_id.musical_track_id 
full join music_collections
on collection_track_id.collection_id = music_collections.collection_id 
where singers.name_nickname like 'Sapphire'