USE test_database;

-- -------------------------
-- Insert into person
-- -------------------------
INSERT INTO person (PersonID, FirstName, LastName, Age)
VALUES
(1, 'Stanley', 'Hudson', 45),
(2, 'Michael', 'Scott', 41),
(3, 'Dwight', 'Schrute', 39);

-- -------------------------
-- Insert into orders
-- -------------------------
INSERT INTO orders (OrderID, Item, PersonID)
VALUES
(1, 'Pretzel', 1),
(2, 'Magic kit', 2),
(3, 'Beet', 3);

-- Test DEFAULT on orders.Item
INSERT INTO orders (OrderID, PersonID)
VALUES (10, 1);

-- -------------------------
-- Insert into cafe
-- -------------------------
INSERT INTO cafe (Name, Item, Price) VALUES
('Kian',    'Cold brew',     4.50),
('Paul',    'Flat White',    5.60),
('Nick',    'Vanilla coke',  4.30),
('William', 'Lemon bitters', 5.20),
('Alex',    'Latte',         4.50),
('Eric',    'Cold brew',     4.50),
('Samuel',  'Latte',         4.50),
('Azman',   'Cappuccino',    4.50),
('Kim',     'Latte',         4.50);
