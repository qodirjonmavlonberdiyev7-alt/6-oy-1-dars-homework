--CAR
 drop database if exists "car";
 create database "car";

 \c "car";
create extension if not exists pgcrypto;
 drop table if exists "automobile";
 create table if not exists "automobile"(
    id uuid primary key default gen_random_uuid(),
    brend varchar(50) not null,
    name varchar(100) not null,
    price numeric(14,2) not null
 );
 alter table "automobile" add column year int;
 alter table "automobile" add column color varchar(100);
 alter table "automobile" rename column color to car_color;
 alter table "automobile" drop column car_color;
 alter table "automobile" rename to "automobiles"

 insert into "automobiles"(brend,name,price,year) values('BMW', 'BMW X7', 350000,2026);
 insert into "automobiles"(brend,name,price,year) values('Lamborghini', 'Lamborghini Revuelto', 850000,2026);
 insert into "automobiles"(brend,name,price,year) values('DODGE', 'Dodge Challenger', 3500000,2025),('Mercedes-Benz', 'Mercedes-Benz G-Class', 4500000,2026);



///getApi
 select * from "automobiles";
/// getOneApi
select * from "automobiles" where brend = 'BMW';
///updateApi
update "automobiles" set brend = 'Chevrolet', name = 'Malibu XL', price = 420000000 where brend = 'BMW';
///deleteApi
delete from "automobiles" where brend = 'Chevrolet';


--FRUIT
 drop database if exists "fruit";
 create database "fruit";

 \c "fruit";
 drop table if exists "fruits";
 create table if not exists "fruits"(
    id uuid primary key default gen_random_uuid(),
    name varchar(50) not null,
    category varchar(100) not null,
    price numeric(14,2) not null,
    quantity int not null
 );
 alter table "fruits" add column is_seasonal boolean;
 alter table "fruits" add column color varchar(100);
 alter table "fruits" rename column color to fruit_color;
 alter table "fruits" drop column fruit_color;

 insert into "fruits"(name,category,price,quantity,is_seasonal) values('olma', 'Tropical',9, 3500, No);
 insert into "fruits"(name,category,price,quantity,is_seasonal) values('banan', 'Tropical',15, 8500,yes);
 insert into "fruits"(name,category,price,quantity,is_seasonal) values('mango', 'Sitrus', 59, 50000,yes),('nok', 'tropical',23, 26000,yes);



///getApi
 select * from "fruits";
/// getOneApi
select * from "fruits" where name = 'olma';
///updateApi
update "fruits" set category = 'tropical', name = 'kiwi', price = 42000, quantity = 8, is_seasonal = yes where name = 'olma';
///deleteApi
delete from "fruits" where name = 'kiwi';


--ANIMAL
 drop database if exists "animal";
 create database "animal";

 \c "animal";
 drop table if exists "animals";
 create table if not exists "animals"(
    id uuid primary key default gen_random_uuid(),
    name varchar(50) not null,
    species varchar(100) not null
 );

 insert into "animals"(name,species) values('tulki', 'yirtqich');
 insert into "animals"(name,species) values('bori', 'yirtqich');



///getApi
 select * from "animals";
/// getOneApi
select * from "animals" where name = 'bori';
///updateApi
update "animals" set species = 'yirtqich', name = 'sher' where name = 'tulki';
///deleteApi
delete from "animals" where name = 'tulki';