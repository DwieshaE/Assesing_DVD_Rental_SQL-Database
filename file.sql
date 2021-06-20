-- The goal of this project is to select and export data from the DVD rental database to excel.
/*to find the tables available in a data click on scchemas and then tables*/ 
-- asterick select all the columns in a table

SELECT * FROM actor;

SELECT first_name, last_name FROM actor; -- asterick select all the columns in a table

SELECT first_name, last_name, email FROM customer;
-- Select and distinct

--SELECT DISTINCT column FROM table--SELECT DISTINCT column FROM table

SELECT * FROM film;
SELECT DISTINCT (release_year) FROM film; 
-- how many unique rental rate is the column name and film is the table
SELECT DISTINCT rental_rate FROM film;
-- use distinct to select distinct rating types film
SELECT DISTINCT rating FROM film;
--count reports the number of rows return
SELECT COUNT (rating) FROM film;
SELECT COUNT (amount) FROM payment;

SELECT COUNT(DISTINCT amount) FROM payment;

/* SELECT column1, column2
	FROM table
	WHERE conditions;*/
	
SELECT * FROM customer;

SELECT * FROM customer
WHERE first_name= 'Jared'; 
	
SELECT * FROM film
WHERE rental_rate >4 and replacement_cost >= 19.99
AND  rating = 'R';

SELECT COUNT(*) FROM film
WHERE rental_rate >4 and replacement_cost >= 19.99
AND  rating = 'R';

-- LOGICAL OPERATORS  AND, OR, != , >, <

--CHALLENGE EXAMPLE

-- What is the email of the customer with the name Nancy Thomas

SELECT * FROM customer
WHERE last_name = 'Thomas' AND first_name = 'Nancy';


SELECT last_name, first_name, email FROM customer
WHERE last_name = 'Thomas' AND first_name = 'Nancy';

 SELECT description FROM film
 WHERE title = 'Outlaw Hanky';
 -- Orderby syntax very last command to compute
/* SELECT column_1, column_2
 FROM table
 ORDER BY column_1 ASC/DESC */
 
--example
SELECT * FROM customer
ORDER BY first_name DESC, store_id ASC;
-- LIMIT should be the very last function

SELECT * FROM payment
WHERE amount != 0.0
ORDER BY payment_date DESC
lIMIT 5;

SELECT customer_id FROM payment
ORDER BY payment_date
LIMIT 10;

SELECT title FROM film
ORDER BY length
LIMIT 5;


SELECT title, length FROM film
WHERE length <=50;
-- BETWEEN operator can be used with dates
-- DATED MUST BE FORMAT IN yyyy-mm-dd
/* SELECT date BETWEEN '2007-01-01' 
AND '2007-02-01'*/

SELECT * FROM payment
WHERE amount NOT BETWEEN 8 AND 9;

SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' and '2007-02-15';

--IN or  NOT in

-- value IN ('X1', 'X2', 'X3')
SELECT COUNT(*) FROM payment
WHERE amount IN(0.99, 1.98, 1.99);

-- The LIKE opertor allows us to match string data using the % sign. The like operator
-- is character sensitive. LIKE A% match everything that start with a capital A. LIKE %a match everything that ends
-- with lower case a.
-- ILIKE is case-insensitive
-- the underscore replace a single character
-- WHERE title LIKE 'Mission Impossible __
-- WHERE name LIKE '_her%', thiss will return names such as cheryl theresa sherri

SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name  ILIKE 's%';

SELECT * FROM customer
WHERE first_name LIKE '%er%';

SELECT * FROM customer
WHERE first_name LIKE '_%er%' AND last_name NOT LIKE 'B%';

-- Excercise
-- how many payment transactions were greater than $5
SELECT COUNT(*) FROM payment
WHERE amount >5.00; 
-- HOW MANY ACTORS HAVE FIRST NAME THAT START WITH p?
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';

-- How many unique districts our customers are from

Select Count(DISTINCT district) FROM address;

Select DISTINCT district FROM address;
-- How many films have a rating R and replacement cost between 5 and 15 dollars?
SELECT COUNT(*) FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15;
-- HOW MANY FILMS HAVE THE WORD TRUMAN SOMEWHER IN THE TITLE
SELECT * FROM film
WHERE title LIKE '%Truman%';





 
 
 
 
 







