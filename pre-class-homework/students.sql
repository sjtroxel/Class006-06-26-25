CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  grade INTEGER
);

INSERT INTO students (first_name, last_name, grade)
VALUES
('John', 'Doe', 90),
('Jane', 'Doe', 95),
('Sally', 'Smith', 100);

UPDATE students
SET grade = 100
WHERE first_name = 'John';

SELECT * FROM students;