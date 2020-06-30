 /*
 |--- Table person ---|
 */
 
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
SELECT * FROM person WHERE color != 'red';

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


 /*
 |--- Table artist ---|
 */


 /*
 |--- Table employee ---|
 */


 /*
 |--- Table invoice ---|
 */
