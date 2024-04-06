SELECT CURRENT_TIMESTAMP(3) INTO @start_time;
SELECT * FROM students s WHERE class = 'A' limit 5;
SELECT * FROM books b  WHERE borrower_id = 1;
SELECT * FROM books b  WHERE borrower_id = 5;
SELECT * FROM books b  WHERE borrower_id = 10;
SELECT * FROM books b  WHERE borrower_id = 50;
SELECT * FROM books b  WHERE borrower_id = 100;
SELECT CURRENT_TIMESTAMP(3) INTO @end_time;
SELECT TIMEDIFF(@end_time, @start_time) as duration;
