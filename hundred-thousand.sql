DELIMITER //

CREATE PROCEDURE GenerateData()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE studentName VARCHAR(100);
    DECLARE studentClass CHAR(1);
    DECLARE studentGrade INT;
    DECLARE bookName VARCHAR(100);
    DECLARE fixedMemo TEXT;

    WHILE i <= 100000 DO
        -- 学生のデータを生成
        SET studentName = CONCAT('Student ', i);
        SET studentClass = CASE
            WHEN MOD(i - 1, 3) = 0 THEN 'B'
            WHEN MOD(i - 1, 3) = 1 THEN 'C'
            WHEN MOD(i - 1, 3) = 2 THEN 'D'
        END;
        SET studentGrade = 1 + FLOOR(RAND() * 3);

        -- 特定のタイミングで'A'クラスの学生を追加
        IF i IN (1, 10, 100, 1000, 10000, 5, 50, 500, 5000, 50000) THEN
            INSERT INTO students (student_id, name, class, grade)
            VALUES (i, CONCAT('Special Student ', i), 'A', 1);
        ELSE
            -- 通常の学生データを挿入
            INSERT INTO students (student_id, name, class, grade)
            VALUES (i, studentName, studentClass, studentGrade);
        END IF;

        -- ランダムなメモを生成
        SET fixedMemo = REPEAT('X', 10000);

        -- 書籍のデータを生成
        SET bookName = CONCAT('Book ', i);

        -- 書籍データを挿入（借用者IDは学生IDに対応、メモを含む）
        INSERT INTO books (book_name, book_id, borrower_id, memo)
        VALUES (bookName, i, i, fixedMemo);

        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;
