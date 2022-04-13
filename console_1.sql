create table army_of_military
(
    id   int unique primary key,
    rank varchar(50) unique
);
insert into army_of_military(id, rank)
values (1, 'serjant');
select *
from army_of_military;
create table kursant
(
    id   int unique primary key,
    name varchar(50)
);
alter table kursant
    add kursants_rank varchar(50) references army_of_military (rank);
select *
from kursant;
create table mladshiy_serjant
(
    id   int unique,
    name varchar(50) not null
);
select *
from mladshiy_serjant;

create table serjant
(
    id   int unique  not null,
    name varchar(50) not null
);
alter table serjant
    add rank_of_serjant varchar(50) references army_of_military (rank);
select *
from serjant;
insert into serjant(id, name, rank_of_serjant)
values (1, 'odk');
truncate table serjant;
create table starshiy_serjant
(
    id                       int unique primary key not null,
    name                     varchar(50),
    rank_of_starshiy_serjant varchar(50) references army_of_military (rank)
);
select *
from starshiy_serjant;

create table starshina
(
    id     int unique primary key not null,
    name   varchar(50),
    status varchar(50) references army_of_military (rank)
);
select *
from starshina;

create table praporshik
(
    id        int unique not null primary key,
    name      varchar(50),
    birth_day date

);
alter table praporshik
    add column status_of_praporshik varchar(50) references army_of_military (rank);
select *
from praporshik;
create table starshiy_praporshik
(
    id        int unique not null primary key,
    name      varchar(50),
    birth_day date,
    status    varchar(59) references army_of_military (rank)
);
select *
from starshiy_praporshik;
create table mladshiy_leytenant
(
    id             int unique  not null primary key,
    name           varchar(50) not null,
    status         varchar(50) references army_of_military (rank),
    place_of_birth varchar(50)
);
create table leytenant
(
    id     int unique not null primary key,
    name   varchar(50),
    status varchar(50) references army_of_military (rank)
);
select *
from leytenant;
create table starshiy_leytenant
(
    id     int unique primary key not null,
    name   varchar(50),
    gender varchar check (gender = 'M' or gender = 'F' ),
    status varchar(50) references army_of_military (rank)
);
create table capitan
(
    id       int primary key unique not null,
    name     varchar(50),
    birt_day date,
    status   varchar(50) references army_of_military (rank)
);
select *
from capitan;

create table maior
(
    id     int,
    name   varchar(50),
    status varchar(50) references army_of_military (rank)
);
select *
from capitan;
create table podpolkovnik
(
    id     int,
    name   varchar(50),
    status varchar(50) references army_of_military (rank)
);
select *
from podpolkovnik;
create table polkovnik
(
    id     int,
    name   varchar(50) not null,
    status varchar(50) references army_of_military (rank)
);
select *
from polkovnik;
create table general_maior
(
    id     int,
    name   varchar(50) not null,
    status varchar(50) references army_of_military (rank)
);
select *
from general_maior;
create table general_leitenant(
    id int,
    name varchar(59) not null ,
    birth_day date,
    status varchar(50)references army_of_military(rank)
);
select * from general_leitenant;
create table general_polkovnik(
    id int,
    name varchar(50)not null ,
    status varchar(59)references army_of_military(rank)
);
select *
from general_polkovnik;
create table general_of_military(
    id int unique not null ,
    name varchar(50),
    status varchar(58) references army_of_military(rank)
);
select *
from general_of_military;
create table officer(
    id int ,
    name varchar(58),
    birth_day date
);
select *
from officer;