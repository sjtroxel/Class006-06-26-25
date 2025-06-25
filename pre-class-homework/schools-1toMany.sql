CREATE TABLE schools (
  id INTEGER PRIMARY KEY,
  name TEXT,
  address TEXT,
  phone_number TEXT,
  website TEXT,
  number_of_students INTEGER
);

CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  grade INTEGER,
  school_id INTEGER,
  FOREIGN KEY (school_id) REFERENCES schools(id)
);

INSERT INTO schools (name, address, phone_number, website, number_of_students)
VALUES  ('School 1', '123 Main St', '123-456-7890', 'school1.com', 100),
        ('School 2', '456 Main St', '123-456-7890', 'school2.com', 200);

INSERT INTO students (first_name, last_name, grade, school_id)
VALUES  ('John', 'Doe', 90, 1),
        ('Jane', 'Doe', 95, 1),
        ('Sally', 'Smith', 100, 2);
        
-- SELECT * FROM schools;
-- SELECT * FROM students;

SELECT * FROM students
    WHERE school_id = 1;