--1)
SELECT film_id FROM film WHERE title = 'Interstellar';
UPDATE film
SET
  rental_duration = 21,  
  rental_rate = 9.99
WHERE
  title = 'Interstellar';
  
--2)
-- SELECT customer_id
-- FROM rental
-- GROUP BY customer_id																			to get the customer id that has at least 10 records
-- HAVING COUNT(*) >= 10
--   AND (SELECT COUNT(*) FROM payment WHERE payment.customer_id = rental.customer_id) >= 10;
  
UPDATE customer
SET
  first_name = 'Konstantin',
  last_name = 'Kernazhytski',
  email = 'konstantin.kern@gmail.com',
  address_id = (SELECT address_id FROM address ORDER BY RANDOM() LIMIT 1) 
WHERE
  first_name = 'BARBARA' AND last_name = 'JONES';
  
--3)
UPDATE customer
SET create_date = CURRENT_DATE;

	



  




