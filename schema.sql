-- =========================
-- Databases
-- =========================
CREATE DATABASE IF NOT EXISTS exercise_db;
CREATE DATABASE IF NOT EXISTS test_database;

-- Use test_database for the exercises
USE test_database;

-- =========================
-- Clean start (drop tables if they exist)
-- =========================
DROP TABLE IF EXISTS cafe;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS person;

-- =========================
-- Person + Orders (Foreign Key)
-- =========================
CREATE TABLE person (
  PersonID INT NOT NULL PRIMARY KEY,
  LastName  VARCHAR(255),
  FirstName VARCHAR(255),
  Age INT
) ENGINE=InnoDB;

CREATE TABLE orders (
  OrderID INT NOT NULL PRIMARY KEY,
  Item VARCHAR(255),
  PersonID INT,
  FOREIGN KEY (PersonID) REFERENCES person(PersonID)
) ENGINE=InnoDB;

-- Default constraint: set default item as 'chicken'
ALTER TABLE orders
ALTER Item SET DEFAULT 'chicken';

-- =========================
-- Cafe table (used for WHERE/IN/LIKE/GROUP BY/HAVING)
-- =========================
CREATE TABLE cafe (
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  Item VARCHAR(255),
  Price FLOAT
);
