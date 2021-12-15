USE classicmodels;

DELIMITER //
CREATE PROCEDURE getCusById(IN cusNum INT(11))
BEGIN
  SELECT * FROM customers WHERE customerNumber = cusNum;
END //
DELIMITER ;

-- Truyền tham số customerNumber = 175;
CALL getCusById(175);

-- procedure với tham số loại OUT
DELIMITER //
CREATE PROCEDURE GetCustomersCountByCity(
    IN  in_city VARCHAR(50),
    OUT total INT
)
BEGIN
    SELECT COUNT(customerNumber)
    INTO total
    FROM customers
    WHERE city = in_city;
END//
DELIMITER ;

-- Gọi procedure và xem kết quả
CALL GetCustomersCountByCity('Lyon',@total);
SELECT @total;

-- procedure với tham số loại INOUT
DELIMITER //
CREATE PROCEDURE SetCounter(
    INOUT counter INT,
    IN inc INT
)
BEGIN
    SET counter = counter + inc;
END//
DELIMITER ;

-- Gọi procedure
SET @counter = 1;
CALL SetCounter(@counter,1); -- 2
CALL SetCounter(@counter,1); -- 3
CALL SetCounter(@counter,5);-- 8
SELECT @counter; -- 8