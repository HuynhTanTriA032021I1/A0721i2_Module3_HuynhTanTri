create database Bai1BaiTap;
use Bai1BaiTap;
 -- Bảng Class có các trường lần lượt là id, name
create table Class(
	Id int primary key,
    Name varchar(50)
);

 -- Bảng Teacher có các trường lần lượt là id, name, age, country
create table Teacher(
	Id int primary key,
    Name varchar(50),
    Age int ,
    Country varchar(50)
);
