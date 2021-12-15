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
 -- Thêm dữ liệu vào bảng Class
INSERT INTO Class
VALUES (1, 'A1', '2008-12-20', 1);
INSERT INTO Class
VALUES (2, 'A2', '2008-12-22', 1);
INSERT INTO Class
VALUES (3, 'B3', current_date, 0);
----------------------------------------------
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
  -- Thêm dữ liệu vào bảng Student
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (StudentName, Address, Status, ClassId)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);
 -------------------------------------------------------------
  -- Tạo Bảng Subject (SubID, SubName, Credit, Status)
  create table Subject(
  SubID int not null auto_increment,
  SubName varchar(30),
  Credit tinyint not null default 1 check (Credit >= 1),
  Status bit default 1,
  primary key (SubID)
  );
   -- Thêm dữ liệu vào bảng Subject
INSERT INTO Subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
       
  --------------------------------------------------------------
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
    -- Thêm dữ liệu vào bảng Mark
INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);