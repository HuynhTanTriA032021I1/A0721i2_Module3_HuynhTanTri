USE classicmodels;

EXPLAIN SELECT * FROM customers WHERE customerNumber = 103;

-- Thêm chỉ mục cho bảng customers
ALTER TABLE customers ADD INDEX idx_customerNumber(customerNumber);

EXPLAIN SELECT * FROM customers WHERE customerNumber = 103;

-- Thêm chỉ mục cho contactFirstName và contactLastName
ALTER TABLE customers ADD INDEX idx_full_name(contactFirstName, contactLastName);
EXPLAIN SELECT * FROM customers WHERE contactFirstName = 'Jean' or contactFirstName = 'King';

-- Dùng drop index để xoá chỉ muc
ALTER TABLE customers DROP INDEX idx_full_name;