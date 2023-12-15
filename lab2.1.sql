1)

INSERT INTO film (title, rental_rate, rental_duration, language_id)
VALUES ('Interstellar', 4.99, 14, 1);

2)

INSERT INTO actor (first_name, last_name)
VALUES
  ('Matthew', 'McConaughey'),
  ('Anne', 'Hathaway'),
  ('Jessica', 'Chastain');

SELECT film_id FROM film WHERE title = 'Interstellar';

INSERT INTO film_actor (actor_id, film_id)
VALUES
  ((SELECT actor_id FROM actor WHERE first_name = 'Matthew' AND last_name = 'McConaughey'),
   (SELECT film_id FROM film WHERE title = 'Interstellar')),
  
  ((SELECT actor_id FROM actor WHERE first_name = 'Anne' AND last_name = 'Hathaway'),
   (SELECT film_id FROM film WHERE title = 'Interstellar')),
  
  ((SELECT actor_id FROM actor WHERE first_name = 'Jessica' AND last_name = 'Chastain'),
   (SELECT film_id FROM film WHERE title = 'Interstellar'));
   
3)

SELECT film_id FROM film WHERE title = 'Interstellar';

INSERT INTO inventory (film_id, store_id)
VALUES
  ((SELECT film_id FROM film WHERE title = 'Interstellar'), 1); 
