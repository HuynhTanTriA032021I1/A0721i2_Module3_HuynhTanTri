CREATE DATABASE Demo;
USE Demo;

-- Tạo Bảng products
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    productCode VARCHAR(50) NOT NULL,
    productName VARCHAR(50) NOT NULL,
    productPrice DOUBLE,
    productAmount INT,
    productDescription VARCHAR(200),
    productStatus VARCHAR(50)
);

-- Thêm dữ liệu cho bảng products
insert into products
values 	('07001', 'Dien thoai Iphone', 1000, 10, 'Dien thoai', 'new'),
		('07002', 'Tivi LG', 700, 7, 'Tivi', 'new'),
		('07003', 'Tu lanh Toshiba', 1100, 17, 'Tu lanh', 'new'),
		('07004', 'Laptop Asus', 1300, 9, 'Laptop', 'new');
        
-- Tạo unique index ở bảng products và xem kết quả explain
CREATE UNIQUE INDEX index_productCode
ON products(productCode);

EXPLAIN SELECT * FROM products
WHERE productCode = '07003';

-- Tạo composite index ở bảng products và xem kết quả ở explain
CREATE INDEX index_name_price
ON products(productName, productPrice);

EXPLAIN SELECT * FROM products 
WHERE productName = 'Ti vi LG' or productPrice = 700;

-- Tạo view lấy thông tin ở bảng products
CREATE VIEW product_views AS
    SELECT 
        productCode, productName, productPrice, productStatus
    FROM
        products;

SELECT * FROM product_views;

-- Sửa view 
CREATE OR REPLACE VIEW product_views AS
    SELECT 
        productCode, productName, productPrice, productStatus
    FROM
        products
    WHERE
        productPrice > 1000;

-- Xóa view
DROP VIEW product_views;

DELIMITER //
CREATE PROCEDURE findAllProducts()
BEGIN
  SELECT * FROM products;
END //
DELIMITER ;

CALL findAllProducts();

-- procedure Thêm sản phẩm
DELIMITER //
CREATE PROCEDURE addNewProducts(
	IN productCode varchar(50), 
	IN productName varchar(50), 
	IN productPrice double, 
	In productAmount int, 
	IN productDescription varchar(50), 
	IN productStatus varchar(50)
)
BEGIN
  insert into products(productCode, productName, productPrice, productAmount, productDescription, productStatus)
  values (productCode, productName, productPrice, productAmount, productDescription, productStatus);
END //
DELIMITER ;

CALL addNewProducts('07005', 'Tablet Xiaomi', 1500, 5, 'Tablet', 'new');
SELECT 
    *
FROM
    products;
    
-- procedure Sửa sản phẩm ttheo id
DELIMITER //
CREATE PROCEDURE editProducts(
	IN editId int,
	IN newProductCode varchar(50), 
	IN newProductName varchar(50), 
	IN newProductPrice double, 
	In newProductAmount int, 
	IN newProductDescription varchar(50), 
	IN newProductStatus varchar(50)
)
BEGIN
  UPDATE products
	SET 
		productCode = newProductCode,
		productName = newProductName,
		productPrice = newProductPrice,
		productAmount = newProductAmount,
		productDescription = newProductDescription,
		productStatus = newProductStatus
	WHERE id = editId;
END //
DELIMITER ;

CALL editProducts(5, '07007', 'Tablet SamSung', 1400, 10, 'Tablet', 'new');
SELECT * FROM products;
    
-- procedure Xóa sản phẩm theo id
DELIMITER //
CREATE PROCEDURE deleteProducts(
	IN deleteID int
)
BEGIN
  DELETE FROM products
	WHERE id = deleteId;
END //
DELIMITER ;

CALL deleteProducts(5);
SELECT * FROM products;