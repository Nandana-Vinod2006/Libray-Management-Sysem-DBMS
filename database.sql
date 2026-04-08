-- Database Management System - Mini Project
-- SQL Schema for Library Management System

-- 1. Create Books Table
CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    total_qty INT NOT NULL DEFAULT 1,
    available_qty INT NOT NULL DEFAULT 1
);

-- 2. Create Members Table
CREATE TABLE members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

-- 3. Create Transactions Table
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT NOT NULL,
    member_name VARCHAR(255) NOT NULL,
    issue_date DATE NOT NULL,
    return_date DATE NOT NULL,
    status VARCHAR(50) DEFAULT 'Issued',
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

-- ==========================================
-- Sample Data Insertion
-- ==========================================

INSERT INTO books (title, author, total_qty, available_qty) VALUES 
('The Great Gatsby', 'F. Scott Fitzgerald', 5, 5),
('Design Patterns', 'Erich Gamma', 2, 2),
('Clean Code', 'Robert C. Martin', 3, 3);

INSERT INTO members (name, email) VALUES 
('Alice Johnson', 'alice.j@example.com'),
('Bob Smith', 'bob.smith@example.com');
