--1)
SELECT film_id FROM film WHERE title = 'Interstellar';

DELETE FROM rental
WHERE inventory_id IN (
    SELECT inventory_id
    FROM inventory
    WHERE film_id = (SELECT film_id FROM film WHERE title = 'Interstellar')
);

DELETE FROM inventory
WHERE film_id = (SELECT film_id FROM film WHERE title = 'Interstellar');

--2)

DELETE FROM payment
where customer_id = (SELECT customer_id FROM customer WHERE first_name = 'Konstantin') 
DELETE FROM rental
where customer_id = (SELECT customer_id FROM customer WHERE first_name = 'Konstantin') 






	