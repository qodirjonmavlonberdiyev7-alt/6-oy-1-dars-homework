//CAR

create database car;
drop table if exists brend;
drop table if exists model;


//FRUIT

create database fruit;
drop table if exists category;
drop table if exists fruit;



//ANIMAL

create database animal;
drop table if exists category;
drop table if exists category;




////////////////////////////////////////

//CAR
\l  => databaselar royxatini korish
create database car;    => databaseni yaratish
drop database if exists car; => databaseni o'chirish
drop database car; => databaseni o'chirish
alter database car rename to automobile; => alter tasir korsatish degani yani database nomini ozgartirdim
\c database_name;    => bu databasega bog'lanish yoki data base ichiga kirish

postgresda sxema table deyiladi
serial bu datatype hisoblanadi vazifasi qowilgan datalarni 1, 2, 3 ga oshirib ketish yani datalarni indexlashga oxshaydi doim unique boladi
primary key har doim id larda boladi
varchar(50) bu datatype va bizdagi string datatypeiga o'xshaydi 
not null = required: true
\dt  => tabler ro'yaxti

// table yaratish
create table "auth" (
    id serial primary key,
    username: varchar(50) not null,
    email: varchar(100) not null
);

///////table nomini ozgartirish

alter table auth rename to users;
odatda postgres kodlari katta harflarda boladi va biz berayotgan nomlar kichkina  harfda boladi odatda   masalan table nomi, email, username

//////tableni ochirish

drop table table_name



* bu yerda barcha columnlarni korsat degani agar masalan bitta username columini kerak bolsa select username, email from auth;
select * from table_name     bu bizda get api hisoblanadi yani shu tableimdagi malumotlarni hammasini olib kelib beradi, masalan email, username, count, price.....


//////////////////////////////////tablega column qoshish

alter table table_name add column password varchar(100);    masalan password columinini qowdim men


yani foydalanuvchi malumotlarini qowayotganda bir tirnoqdan foydalaniladi

int bu number data type


////////////////columni ochirish masalan

alter table "auth" drop column age;


getOne api

select * from "auth" where id = 1

qowtirnoq table ga nom berishda boladi bowqa vaziyatlar da ' ishlatiladi

databaseni tableni ozgartirmoqchi bolsam alter sozi bilan bowlayman



/////////UPDATE

update "auth" set username 'jasur', email = 'jasur12', password = '123456' where id = 1;


/////////////DELETE

delete from auth where id = 1;