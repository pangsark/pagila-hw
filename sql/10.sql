/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */
SELECT title, film_id, count(actor_id) AS count_actor
FROM film
JOIN film_actor USING (film_id)
GROUP BY film_id, title
ORDER BY count_actor, title;
