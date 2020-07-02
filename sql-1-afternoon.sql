 /*
 |--- Table person ---|
 */
 
DROP TABLE IF EXISTS person;
 
-- Step 1
CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name VARCHAR(40),
  age INTEGER,
  height INTEGER,
  city VARCHAR(50),
  favorite_color VARCHAR(20)
);

-- Step 2
INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Adam', 30, 183, 'Chicago', 'blue'),
('Alice', 25, 160, 'New York', 'red'),
('Bob', 45, 155, 'Atlanta', 'orange'),
('John', 17, 190, 'San Franciso', 'green'),
('Cindy', 27, 168, 'Dallas', 'yellow')

RETURNING *;

-- Step 3
SELECT name, height FROM person ORDER BY height DESC;

-- Step 4
SELECT name, height FROM person ORDER BY height ASC;

-- Step 5
SELECT * FROM person ORDER BY age DESC;

-- Step 6
SELECT * FROM person WHERE age > 20;

-- Step 7
SELECT * FROM person WHERE age = 18;

-- Step 8
SELECT * FROM person WHERE age < 20 and age > 30;

-- Step 9
SELECT * FROM person WHERE age != 27;

-- Step 10
SELECT * FROM person WHERE favorite_color != 'red';

-- Step 11
SELECT * FROM person WHERE favorite_color NOT IN ('red', 'blue');

-- Step 12
SELECT * FROM person WHERE favorite_color IN ('orange', 'green');

-- Step 13
SELECT * FROM person WHERE favorite_color IN ('orange', 'green', 'blue');

-- Step 14
SELECT * FROM person WHERE favorite_color IN ('yellow', 'purple');


 /*
 |--- Table orders ---|
 */
 
DROP TABLE IF EXISTS orders;
 
 -- Step 1
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id SERIAL,
  product_name VARCHAR(50),
  product_price FLOAT,
  quantity INTEGER
);

-- Step 2
INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(1, 'cookies', 3.99, 10),
(1, 'milk', 2.99, 1),
(2, 'burger patties', 10.99, 1),
(3, 'apples', 0.50, 4),
(4, 'eggs', 2.99, 2)

RETURNING *;

-- Step 3
SELECT * FROM orders;

-- Step 4
SELECT COUNT(*) FROM orders;

-- Step 5
SELECT SUM(quantity * product_price) FROM orders;

-- Step 6
SELECT order_id, SUM(quantity * product_price) FROM orders GROUP BY order_id ORDER BY order_id;


 /*
 |--- Table artist ---|
 */
 
 -- Step 1
INSERT INTO artist
(name)
VALUES
('Alice'),
('Bob'),
('The Callback Functions')

RETURNING *;

-- Step 2
SELECT * FROM artist ORDER BY name DESC LIMIT 10;

-- Step 3
SELECT * FROM artist ORDER BY name ASC LIMIT 5;

-- Step 4
SELECT * FROM artist WHERE name LIKE 'Black%';

-- Step 5
SELECT * FROM artist WHERE NAME LIKE '%Black%';


 /*
 |--- Table employee ---|
 */

-- Step 1
SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

-- Step 2
SELECT MAX(birth_date) FROM employee;

-- Step 3
SELECT MIN(birth_date) FROM employee;

-- Step 4
SELECT * FROM employee WHERE reports_to = (SELECT employee_id FROM employee WHERE first_name = 'Nancy' AND last_name = 'Edwards');

-- Step 5
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';


 /*
 |--- Table invoice ---|
 */

-- Step 1
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

-- Step 2
SELECT MAX(total) FROM invoice;

-- Step 3
SELECT MIN(total) FROM invoice;

-- Step 4
SELECT * FROM invoice WHERE total > 5;

-- Step 5
SELECT * FROM invoice WHERE total < 5;

-- Step 6
SELECT * FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ');

-- Step 7
SELECT AVG(total) FROM invoice;

-- Step 8
SELECT SUM(total) FROM invoice;
