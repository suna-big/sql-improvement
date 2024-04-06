SELECT CURRENT_TIMESTAMP(3) INTO @start_time;
SELECT b.book_name
FROM books b
JOIN students s ON b.borrower_id = s.student_id
WHERE s.class = 'A'
LIMIT 5;
SELECT CURRENT_TIMESTAMP(3) INTO @end_time;
SELECT TIMEDIFF(@end_time, @start_time) as duration;
