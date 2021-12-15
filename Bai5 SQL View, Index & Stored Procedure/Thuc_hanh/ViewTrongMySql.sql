USE classicmodels;

-- Tạo một view với các trường hợp được lấy từ câu lệnh select từ bảng customers
CREATE VIEW customer_views AS
    SELECT 
        customerNumber, customerName, phone
    FROM
        customers;

SELECT * FROM customer_views;
    
-- Cập nhập view để thêm 1 vột vào view
CREATE OR REPLACE VIEW customer_views AS
    SELECT 
        customerNumber,
        customerName,
        contactFirstName,
        contactLastName,
        phone
    FROM
        customers
    WHERE
        city = 'Nantes';
        
SELECT * FROM customer_views;
    
-- Xóa view bằng drop
DROP VIEW customer_views;