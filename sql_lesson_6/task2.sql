use lesson_6;

DELIMITER //
CREATE PROCEDURE get_even(IN start INT, IN end INT)
BEGIN
    DECLARE i INT DEFAULT start;
    DECLARE res_str TEXT DEFAULT NULL;

    WHILE i <= end DO
        IF i % 2 = 0 THEN
            IF res_str IS NULL THEN
                SET res_str = CONCAT(i);
            ELSE
                SET res_str = CONCAT(res_str, ', ', i);
            END IF;
        END IF;
        SET i = i + 1;
    END WHILE;

    SELECT res_str AS EvenNumbers;
END //

DELIMITER ;

CALL get_even(1, 10);
