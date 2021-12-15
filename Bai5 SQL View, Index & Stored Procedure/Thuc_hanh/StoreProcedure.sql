USE classicmodels;

DELIMITER //
CREATE PROCEDURE findAllCustomers()
BEGIN
  SELECT * FROM customers;
END //
DELIMITER ;

CALL findAllCustomers();

-- Xoá PROCEDURE và tạo PROCEDURE mới cùng tên
DELIMITER //
DROP PROCEDURE IF EXISTS `findAllCustomers`//

CREATE PROCEDURE findAllCustomers()
BEGIN
   SELECT *  FROM customers where customerNumber = 175;
END; //
DELIMITER ;

CALL findAllCustomers();