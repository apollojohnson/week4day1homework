-- Q1.  How many actors are there with the last name ‘Wahlberg’?
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- Q2.  How many payments were made between $3.99 and $5.99?
SELECT amount, COUNT(*)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99
GROUP BY amount
ORDER BY COUNT DESC;

-- Q3.  What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(*)
FROM inventory
GROUP BY film_id
ORDER BY COUNT DESC;

-- Q4.  How many customers have the last name ‘William’?
SELECT first_name, last_name
FROM customer
WHERE last_name = 'William';

-- Q5.  What store employee (get the id) sold the most rentals?
-- a. from rental, find how many were sold to store 1 and store 2
-- b. from staff, find which employee matches the winning store number

-- Q6.  How many different district names are there?
SELECT COUNT(DISTINCT district)
FROM address;

-- Q7.  What film has the most actors in it? (use film_actor table and get film_id)
SELECT actor_id, film_id
FROM film_actor
ORDER BY actor_id DESC;

-- Q8.  From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(*)
FROM customer
WHERE last_name LIKE '%es';

-- Q9.  How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--		with ids between 380 and 430? (use group by and having > 250)
SELECT customer_id, COUNT(*)
FROM rental
GROUP BY customer_id
HAVING customer_id BETWEEN 380 AND 430
ORDER BY COUNT DESC;

-- Q10. Within the film table, how many rating categories are there?
-- And what rating has the most movies total?
SELECT rating, COUNT(*)
FROM film
GROUP BY rating
ORDER BY COUNT DESC;