USE QuanLySinhVien;
 
 -- lấy dữ liệu học viên từ bảng Student để hiển thị danh sách tất cả các học viên
SELECT *FROM Student;

 -- hiển thị danh sách học viên đang theo học
SELECT * FROM Student WHERE Status = true;

 -- Sử dụng điều kiện where Credit < 10 và from Subject để lấy ra danh sách các môn học có thời gian học nhỏ hơn 10
 SELECT * FROM Subject WHERE Credit < 10;
 
  -- Sử dụng câu lệnh Join và where để hiển thị danh sách học viên lớp A1 Join 2 bảng Student và Class
  SELECT S.StudentId, S.StudentName, C.ClassName
FROM Student S join Class C on S.ClassId = C.ClassID;
 
  -- Sử dụng câu lệnh Where C.ClassName ='A1' để hiển thị danh sách học viên lớp A1
  SELECT S.StudentId, S.StudentName, C.ClassName
FROM Student S join Class C on S.ClassId = C.ClassID
WHERE C.ClassName = 'A1';

 -- Hiển thị tất cả các điểm đang có của học viên và Sử dụng câu lệnh Where để hiển thị điểm môn CF của các học viên
 SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId
WHERE Sub.SubName = 'CF';






