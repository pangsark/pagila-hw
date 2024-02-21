/*
 * List the last names of actors, as well as how many actors have that last name.
 * HINT:
 * Use the count() aggregation function and group by the actor's last name.
 */
SELECT last_name, count(*) AS count_last_name FROM actor GROUP BY last_name ORDER BY count(*) DESC;
