-- 1 task

 SELECT
  s.staff_id,
  s.first_name,
  s.last_name,
  COALESCE(SUM(CASE WHEN EXTRACT(YEAR FROM p.payment_date) = 2017 THEN p.amount ELSE 0 END), 0) AS amount
FROM
  staff s
LEFT JOIN
  payment p ON s.staff_id = p.staff_id
GROUP BY
  s.staff_id, s.first_name, s.last_name
ORDER BY
  amount DESC;



-- 2 task

SELECT
  f.film_id,
  f.title,
  COUNT(r.inventory_id) AS rental_count
FROM
  film f
JOIN
  inventory i ON f.film_id = i.film_id
JOIN
  rental r ON i.inventory_id = r.inventory_id
GROUP BY
  f.film_id, f.title
ORDER BY
  rental_count DESC
LIMIT 5;

--there is no age column in any of the tables




-- 3 task 

WITH ActorFilmYears AS (
  SELECT
    fa.actor_id,
    MIN(f.release_year) AS earliest_release_year,
    MAX(f.release_year) AS latest_release_year
  FROM
    film_actor fa
  INNER JOIN
    film f ON fa.film_id = f.film_id
  GROUP BY
    fa.actor_id
)

SELECT
  af.actor_id,
  af.earliest_release_year,
  af.latest_release_year,
  af.latest_release_year - af.earliest_release_year AS break_duration
FROM	
  ActorFilmYears af
ORDER BY
  break_duration DESC;





