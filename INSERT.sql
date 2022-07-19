insert into music_genre (id, name) values
	(1, 'Juzz'),
	(2, 'Punk'),
	(3, 'Hip-hop'),
	(4, 'Electronic'),
	(5, 'Rock');

insert into performer (id, name) values
	(1, 'Alisher Usmanov'), 
	(2, 'Ricardo Milos'), 
	(3, 'Aleksandr Pushkin'), 
	(4, 'Gurbanguli Berdimuhamedov'), 
	(5, 'Rita Yolovich'), 
	(6, 'Artemiy Lebedev'), 
	(7, 'Maddyson'), 
	(8, 'Alexey Notvalniy');

insert into albums (id, name, performer, year_of_production) values
	(1, 'For elite', 1, 1982), 
	(2, 'Not my little girl!', 2, 1991), 
	(3, 'Do not make my cry', 3, 2011), 
	(4, 'Military', 4, 2004), 
	(5, 'Dangerous', 5, 2022), 
	(6, 'Sweety', 6, 2020), 
	(7, 'Hacker not lies', 7, 2015), 
	(8, 'You should stop it', 8, 1991);

insert into tracks (id, name, album, duraton) values
	(1, 'E-e-e-eha!', 1, 183),
	(2, 'Din-don', 2, 215),
	(3, 'Enemy in my country', 3, 98),
	(4, 'Hot tea', 4, 315),
	(5, 'White papperlist', 5, 156),
	(6, 'I do not what', 6, 113),
	(7, 'Computer', 7, 109),
	(8, 'Little big', 8, 308),
	(9, 'Run', 6, 265),
	(10, 'Yeals', 3, 280),
	(11, 'Germany', 4, 241),
	(12, 'Green tree', 3, 165),
	(13, 'The wall', 1, 162),
	(14, 'Circle friend', 2, 108),
	(15, 'Door closed', 7, 305);

insert into collection (id, name, year_of_release) values
	(1, 'Top kek', 2013),
	(2, 'BIG burger', 2009),
	(3, 'Best track', 2018),
	(4, 'Do not stop', 2018),
	(5, 'Listen everyday', 2017),
	(6, 'Look at me!', 2015),
	(7, 'Best', 2010),
	(8, 'Top of top', 1999);

insert into genre_of_performer (genre, performer) values
	(1, 1),
	(3, 2),
	(2, 3),
	(5, 4),
	(5, 5),
	(4, 6),
	(2, 7),
	(3, 8);

insert into albums_of_performer (performer, album) values
	(1, 3),
	(2, 1),
	(3, 2),
	(4, 5),
	(5, 7),
	(6, 4),
	(7, 6),
	(8, 8);

insert into track_of_collaction (track, collection) values
	(1, 8),
	(2, 6),
	(3, 3),
	(4, 5),
	(5, 2),
	(6, 1),
	(7, 4),
	(8, 7),
	(9, 2),
	(10, 1),
	(11, 8),
	(12, 3),
	(13, 4),
	(14, 2),
	(15, 1);
