CREATE database LuyenTapCacHamThongDungTrongSQl;
USE LuyenTapCacHamThongDungTrongSQl;

-- Tạo Bảng Sinh Viên
CREATE TABLE sinh_vien (
    id INT not null ,
    ten VARCHAR(20) ,
    tuoi INT,
    khoa VARCHAR(50),
    so_tien DOUBLE
);

-- Thêm Dữ liệu vào bảng Sinh Vien
insert into sinh_vien
values 	(1, 'Trí', 22, 'Công nghệ thông tin', 10000000),
		(2, 'Linh', 22, 'Kế toán' , 8000000 ),
        (3, 'Trí', 22, 'Điện điện tử', 15000000)
;
-- Truy xuất sinh viên tên Trí trong bảng nhân viên
SELECT * FROM sinh_vien
WHERE ten = 'Trí';
-- Hiển thị tổng số tiền của sinh viên Trí
SELECT SUM(so_tien) FROM sinh_vien
WHERE ten = 'Trí';
    
-- Truy xuất tất cả các sinh viên không trùng lặp
SELECT ten FROM sinh_vien
GROUP BY (ten);