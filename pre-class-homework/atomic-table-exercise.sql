-- A weak, puny non-atomic table:

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  password TEXT,
  addresses TEXT,
  phone_numbers TEXT
);


-- Nuclear fission reaction --> Explosive, awesome ATOMIC table(s)!

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  password TEXT
);

CREATE TABLE addresses (
  id INTEGER PRIMARY KEY,
  user_id INTEGER,
  street TEXT,
  city TEXT,
  state TEXT,
  zip_code TEXT,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE phone_numbers (
  id INTEGER PRIMARY KEY,
  user_id INTEGER,
  phone_number TEXT,
  FOREIGN KEY (user_id) REFERENCES users(id)
);


-- But I don't really understand this much yet.