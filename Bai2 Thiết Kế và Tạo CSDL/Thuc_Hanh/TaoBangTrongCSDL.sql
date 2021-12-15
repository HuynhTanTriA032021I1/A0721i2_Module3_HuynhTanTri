create database QuanLyDiemThi;
use QuanLyDiemThi;

 -- Tạo CSDl Học Sinh (MaHS,TenHS,NgaySinh,Lop,GioiTinh) với MaHS là khoá chính
 create table HocSinh(
 MaHS int,
 TenHS varchar(50),
 NgaySinh datetime,
 Lop varchar(50),
 GioiTinh varchar(50),
 Primary Key (MaHS)
 );
 
  -- Tạo CSDL Môn Học (MaMH, TenMH) với MaMh là khoá chính 
  create table MonHoc(
  MaMH int,
  TenMH varchar(50),
  Primary Key ( MaMH )
  );
  
   -- Tạo CSDl Giao Viên (MaGV, TenGV, SDT) với MaGV là khoá chính
   create table GiaoVien(
   MaGV int,
   TenGV varchar(50),
   SDT int,
   Primary Key (MaGV)
   );
   
    -- Tạo CSDl Bảng Điểm (MaHS, MaMH, DiemThi, NgayKT) với MaHS và MaMH là khoá phụ
    create table BangDiem(
    MaHS int,
    MaMH int,
    DiemThi int,
    NgayKT datetime,
    Foreign Key (MaHS) references HocSinh (MaHS),
	Foreign Key (MaMH) references MonHoc (MaMH)
    );
    
     -- Chỉnh sửa bảng Môn Học bổ sung thêm MAGV là khoá ngoại của bảng Môn Học
     Alter table MonHoc Add MaGV int;
     ALTER TABLE MonHoc ADD CONSTRAINT FK_MaGV FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV);