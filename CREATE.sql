create table if not exists Music_genre (
	ID serial primary key,
	Name varchar(60) not null
);

create table if not exists Performer (
	ID serial primary key,
	Name varchar(60) not null
);

create table if not exists Genre_of_performer (
	ID serial primary key,
	Genre integer not null references Music_genre(ID),
	Performer integer not null references Performer(ID)
);

create table if not exists Albums (
	ID serial primary key,
	Name varchar(60) not null,
	Performer varchar(60) not null,
	Year_of_production integer not null
);

create table if not exists Albums_of_performer (
	ID serial primary key,
	Performer integer not null references performer(ID),
	Album integer not null references Albums(ID)
);

create table if not exists Tracks (
	ID serial primary key,
	Name varchar(60) not null,
	Album integer not null references Albums(ID),
	Duraton integer not null
);

create table if not exists Track_of_collaction (
	ID serial primary key,
	Track integer not null references Tracks(ID),
	Collection integer not null references Collection(ID)
);

create table if not exists Collection (
	ID serial primary key,
	Name varchar(60) not null,
	Year_of_release integer not null
);
