---- Create Master Table Airports
create table airports
 (faa varchar(3) not null primary key,
  name varchar(100),
  lat float(9),
  lon float(9),
  alt int,
  tz int,
  dst varchar(2),
  tzone varchar(50)
 );

---- Create Master Table planes
create table planes
 (tailnum varchar(6) not null primary key,
  year int,
  type varchar(50),
  manufacturer varchar(30),
  model varchar(80),
  engines varchar(12),
  seats int,
  speed int,
  engine varchar(20)
 );
 
---- Create Master Table airlines
create table airlines
 (carrier varchar(2) not null primary key,
  name varchar(60)
 );
 
---- Create Flight Table
create table flights 
 (id serial not null primary key,
  year int,
  month int,
  day int,
  dep_time int,
  sched_dep_time int,
  dep_delay int,
  arr_time int,
  sched_arr_time int,
  arr_delay int,
  carrier varchar(2),
  flight varchar(10),
  tailnum varchar(6),
  origin varchar(3),
  dest varchar(3),
  air_time int,
  distance int,
  hour int,
  minute int,
  time_hour varchar(30),
  foreign key (carrier) references airlines(carrier),
  foreign key (tailnum) references planes(tailnum),
  foreign key (origin) references airports(faa),
  foreign key (dest) references airports(faa)
 );
 
---- Query Test
select * from flights
where month=7 and day=29
limit 100;
