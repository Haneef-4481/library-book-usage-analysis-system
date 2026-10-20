CREATE DATABASE IF NOT EXISTS library_management;

USE library_management;

CREATE TABLE IF NOT EXISTS borrowers (
    borrower_id INT PRIMARY KEY AUTO_INCREMENT,
    borrower_name VARCHAR(30) NOT NULL,
    roll_no VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS books (
    book_id INT NOT NULL,
    isbn VARCHAR(13) PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    author VARCHAR(30) NOT NULL,
    category VARCHAR(30) NOT NULL,
    copies_available INT NOT NULL
);

CREATE TABLE IF NOT EXISTS loans (
    book_id INT,
    borrower_id INT,
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (borrower_id) REFERENCES borrowers(borrower_id),
    issue_date DATE NOT NULL,
    due_date DATE NOT NULL,
    return_date DATE
);