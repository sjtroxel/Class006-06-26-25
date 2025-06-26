CREATE TABLE students (
    id int,
    first_name varchar(255),
    last_name varchar(255),
    grade int
);

INSERT INTO students (id, first_name, last_name, grade)
    VALUES  (1, 'John', 'Doe', 90),
            (2, 'Jane', 'Doe', 97);
            -- (3, 'John', 'Doe2', 90);
            
SELECT * FROM students;

UPDATE students
    SET grade = 95
    -- WHERE first_name = 'John';
    WHERE id = 1;
    
SELECT * FROM students;

DELETE FROM students
    WHERE id = 1;
    
SELECT * FROM students;