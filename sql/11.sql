/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */
SELECT title, film_id, count(inventory.inventory_id) AS count
FROM film
JOIN inventory USING (film_id)
WHERE title LIKE 'H%'
GROUP BY title, film_id
ORDER BY title DESC;
