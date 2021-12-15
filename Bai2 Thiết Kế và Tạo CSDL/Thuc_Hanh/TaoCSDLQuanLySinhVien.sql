create database QuanLySinhVien;
use QuanLySinhVien;

 -- Tạo Bảng Class (ClassID, ClassName, StartDate, Status)
create table Class(
ClassID int not null auto_increment,
ClassName varchar(60) not null,
StartDate datetime not null,
Status bit,
primary key (ClassID)
);

 -- Tạo Bảng Student (StudentID, StudentName, Address, Phone, Status, ClassID)
 create table Student(
 StudentID int not null auto_increment,
 StudentName varchar(30) not null,
 Address varchar(50),
 Phone varchar(20),
 Status bit,
 ClassID int not null,
 primary key (StudentID),
 foreign key (ClassID) references Class (ClassID)
 );
 
  -- Tạo Bảng Subject (SubID, SubName, Credit, Status)
  create table Subject(
  SubID int not null auto_increment,
  SubName varchar(30),
  Credit tinyint not null default 1 check (Credit >= 1),
  Status bit default 1,
  primary key (SubID)
  );
  
   -- Tạo Bảng Mark (MarkID, SubID, StudentID, Mark, ExamTimes)
   create table Mark(
   MarkID int not null auto_increment,
   SubID int not null,
   StudentID int not null,
   Mark float default 0 check (Mark between 0 and 100 ),
   ExamTimes tinyint default 1,
   primary key (MarkID),
   unique(SubID,StudentID),
   foreign key (SubID) references Subject (SubID),
   foreign key (StudentID) references Student(StudentID)
   );