INSERT INTO singers VALUES
    (1, 'Sapphire'),
    (2, 'Master of Noizy Ceremony'),
    (3, 'Vero4ka'),
    (4, 'ProLeshkevich'),
    (5, 'The Undisputed series');
   
INSERT INTO musical_genres VALUES
    (1, 'hip hop'),
    (2, 'kpop'),
    (3, 'rap'),
    (4, 'chill-out');
   
INSERT INTO genres_singers_id VALUES
    (4, 1),
    (3, 2),
    (4, 3),
    (3, 4),
    (1, 5);
   
INSERT INTO music_albums VALUES
    (1, 'Forgive me, my love', 2000),
    (2, 'The last record', 2010),
    (3, 'The best songs', 2014),
    (4, 'Within the range between despair and hope', 2017)
    (5, 'Love Yourself', 2019);
   
INSERT INTO singers_ablums_id VALUES
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 4),
    (4, 4, 5);
   
INSERT INTO musical_tracks VALUES
    (1, 'Wanna?', 1, 197),
    (2, 'Sought', 1, 214),
    (3, 'Make a destroy', 2, 239),
    (4, 'Swearing behind my wall', 2, 224),
    (5, 'The noise around', 3, 213),
    (6, 'Dream', 3, 216),
    (7, 'Russia for melancholic', 4, 177),
    (8, 'Answer: Love Yourself', 5, 238);
   
INSERT INTO music_collections VALUES
    (1, 'Moody Mix', 1999),
    (2, 'Pop Mix', 2023),
    (3, '80s Mix', 1985),
    (4, 'Energy Booster', 2007),
    (5, 'Girl Krush', 2003),
    (6, 'Spring', 2020);
   
INSERT INTO collection_track_id VALUES
    (1, 1, 5),
    (2, 2, 2),
    (3, 3, 4),
    (4, 4, 1),
    (5, 5, 2),
    (6, 6, 3),
    (7, 7, 1);   