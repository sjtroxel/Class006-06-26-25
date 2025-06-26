CREATE TABLE Authors (
    AuthorID int PRIMARY KEY,
    Name text,
    Bio text
);

CREATE TABLE Publishers (
    PublisherID int PRIMARY KEY,
    Name text,
    Address text
);

CREATE TABLE Books (
    BookID int PRIMARY KEY,
    Title text,
    YearPublished int,
    AuthorID int,
    PublisherID int,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID)
);

INSERT INTO Authors (AuthorID, Name, Bio)
    VALUES  (1, 'George Orwell', 'English novelist and essayist'),
            (2, 'Martha Wells', 'An author');
    
INSERT INTO Publishers (PublisherID, Name, Address)
    VALUES  (1, 'Penguin Books', 'London, UK'),
            (2, 'Tor Books', 'New York, NY');
    
INSERT INTO Books (BookID, Title, YearPublished, AuthorID, PublisherID)
    VALUES  (1, '1984', 1950, 1, 1),
            (2, 'All Systems Red', 2017, 2, 2);
    
-- SELECT * FROM Books;

UPDATE Books
    SET YearPublished = 1949
    WHERE Title = '1984' AND AuthorID = 1;
    
-- SELECT * FROM Books;

SELECT 
    Authors.Name AS AuthorName,
    Publishers.Name AS PublisherName,
    Books.Title,
    Books.YearPublished
FROM 
    Books
INNER JOIN Authors ON Books.AuthorID = Authors.AuthorID
INNER JOIN Publishers ON Books.PublisherID = Publishers.PublisherID;

DELETE FROM Books
WHERE PublisherID IN (SELECT PublisherID FROM Publishers WHERE Name = 'Penguin Books');

SELECT * FROM Books;