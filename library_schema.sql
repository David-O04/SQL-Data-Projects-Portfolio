-- library_schema.sql

-- Create a table for books
CREATE TABLE IF NOT EXISTS books (
    book_id INTEGER PRIMARY KEY,
    title TEXT,
    author_id INTEGER,
    publication_year INTEGER
);

-- Create a table for authors
CREATE TABLE IF NOT EXISTS authors (
    author_id INTEGER PRIMARY KEY,
    name TEXT
);

-- Create a table for borrowers
CREATE TABLE IF NOT EXISTS borrowers (
    borrower_id INTEGER PRIMARY KEY,
    name TEXT
);

-- Create a table for borrowings
CREATE TABLE IF NOT EXISTS borrowings (
    borrowing_id INTEGER PRIMARY KEY,
    borrower_id INTEGER,
    book_id INTEGER,
    borrowing_date DATE,
    FOREIGN KEY (borrower_id) REFERENCES borrowers (borrower_id),
    FOREIGN KEY (book_id) REFERENCES books (book_id)
);