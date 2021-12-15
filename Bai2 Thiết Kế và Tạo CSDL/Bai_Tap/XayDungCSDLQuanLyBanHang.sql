create database QuanLyBanHang;
use QuanLyBanHang;

create table Customer(
cID int not null auto_increment,
cName varchar(20),
cAge int,
primary key (cID)
);

create table Orderr (
oID int not null auto_increment,
cID int not null,
oDate datetime,
oTotalPrice double,
primary key (oID),
foreign key (cID) references Customer(cID)
);

create table Product (
pID int not null auto_increment,
pName varchar(20),
pPrice double,
primary key (pID)
);

create table OrderDetail (
oID int not null,
pID int not null,
odQTY varchar(50) default 1 check (odQTY > 1),
foreign key (oID) references Orderr(oID),
foreign key (pID) references Product(pID)
);

