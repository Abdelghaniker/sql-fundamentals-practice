USE test_database;

-- =========================
-- Basic SELECT checks
-- =========================
SELECT * FROM person;
SELECT * FROM orders;
SELECT * FROM cafe;

-- =========================
-- WHERE (Latte customers)
-- =========================
SELECT Name
FROM cafe
WHERE Item = 'Latte';

-- Exercise 1: customers + item with price > 4.50
SELECT Name, Item
FROM cafe
WHERE Price > 4.50;

-- Exercise 2: all columns with price > 4.50 but not Flat White
SELECT *
FROM cafe
WHERE Price > 4.50
AND Item != 'Flat White';

-- =========================
-- ORDER BY (descending price)
-- =========================
SELECT Item
FROM cafe
ORDER BY Price DESC;

-- (extra) show item + price ordered by price desc
SELECT Item, Price
FROM cafe
ORDER BY Price DESC;

-- =========================
-- IN operator examples
-- =========================
SELECT *
FROM cafe
WHERE Item IN ('Latte', 'Cold brew', 'Rum and coke');

-- IN with subquery (items with price > 4.5)
SELECT *
FROM cafe
WHERE Item IN (
  SELECT Item
  FROM cafe
  WHERE Price > 4.5
);

-- Exercise 4: Cold brew or Vanilla coke
SELECT *
FROM cafe
WHERE Item IN ('Cold brew', 'Vanilla coke');

-- =========================
-- GROUP BY
-- =========================
SELECT COUNT(*) AS count, Item
FROM cafe
GROUP BY Item;

-- =========================
-- LIKE
-- =========================
-- Items starting with 'l'
SELECT *
FROM cafe
WHERE Item LIKE 'l%';

-- Items where the 2nd letter is 'e'
SELECT *
FROM cafe
WHERE Item LIKE '_e%';

-- Exercise: names where item contains 'tt' anywhere
SELECT Name
FROM cafe
WHERE Item LIKE '%tt%';

-- =========================
-- HAVING (aggregate filter)
-- =========================
SELECT COUNT(Name) AS customer_count, Item
FROM cafe
GROUP BY Item
HAVING AVG(Price) < 5.50;
