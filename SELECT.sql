-- количество исполнителей в каждом жанре;
select music_genre.name, COUNT(genre_of_performer.genre)
from music_genre, genre_of_performer
where genre_of_performer."genre" = music_genre."id"
group by music_genre."name";

-- количество треков, вошедших в альбомы 2019-2020 годов;
select a.name, COUNT(t.album) 
from albums a, tracks t 
where year_of_production between 2019 and 2020 and t.album = a.id
group by a."name";

-- средняя продолжительность треков по каждому альбому;
select a.name, avg(t.duraton) 
from tracks t, albums a
where t.album = a.id 
group by a."name";

-- все исполнители, которые не выпустили альбомы в 2020 году;
select a.name
from albums a, performer p, albums_of_performer aop 
where aop.performer = p.id and not a.year_of_production = 2020
group by a.name;

-- названия сборников, в которых присутствует конкретный исполнитель (выберите сами - Aleksandr Pushkin);
select c.name, p.name 
from collection c, track_of_collaction toc, tracks t, albums_of_performer aop, performer p, albums a 
where p.name = 'Aleksandr Pushkin' and aop.performer = p.id and aop.album = a.id and a.id = t.album and t.id = toc.track and toc.collection = c.id;

-- название альбомов, в которых присутствуют исполнители более 1 жанра;
select a.name
from albums a 
join albums_of_performer aop on a.id = aop.performer 
join genre_of_performer gop on aop.performer = gop.performer 
group by a.name
having count(gop.performer) > 1;

-- наименование треков, которые не входят в сборники;
select t.name "Треки не входящие в сборники"
from tracks t 
where not exists (
	select t.id
	from track_of_collaction toc
	where toc.collection  = t.id);

-- исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
select p."name" "Исполнитель самого короткого трека"
from performer p 
join albums_of_performer aop on p.id = aop.performer 
join albums a on a.id = aop.performer 
join tracks t on t.album = a.id 
where t.duraton = (select min(duraton) from tracks t2); 

-- название альбомов, содержащих наименьшее количество треков.
select a.name
from albums a, tracks t 
where t.album = a.id 
group by a.name 
having count(a.name) = (
	select min(q)
	from (
		select count(t2.album) as q 
		from albums a2, tracks t2 
		where a2.id = t2.album 
		group by a2.name
		)
	as f
);
