CREATE TABLE students (
    student_id INT NOT NULL,
    name VARCHAR(100),
    class VARCHAR(50),
    grade INT,
    PRIMARY KEY (student_id)
);

CREATE TABLE books (
    book_name VARCHAR(100),
    book_id INT NOT NULL,
    borrower_id INT,
    memo TEXT,
    PRIMARY KEY (book_id),
    FOREIGN KEY (borrower_id) REFERENCES students(student_id)
);
