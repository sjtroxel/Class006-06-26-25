CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  email TEXT,
  password TEXT
);

INSERT INTO users (first_name, last_name, email, password)
    VALUES  ('John', 'Doe', 'johndoe@email.com', 'password'),
            ('Jane', 'Doe', 'janedoe@email.com', 'password'),
            ('Sally', 'Smith', 'sallysmith@email.com', 'password');

UPDATE users
    SET email = 'updatedemail@email.com'
    WHERE id = 1;

DELETE FROM users
    WHERE id = 2;

SELECT * FROM users;