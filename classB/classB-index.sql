SELECT CURRENT_TIMESTAMP(3) INTO @start_time;
SELECT * FROM students s WHERE class = 'B' ;
SELECT CURRENT_TIMESTAMP(3) INTO @end_time;
SELECT TIMEDIFF(@end_time, @start_time) as duration;
