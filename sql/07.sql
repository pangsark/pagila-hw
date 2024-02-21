/*
 * List last names of actors and the number of actors who have that last name,
 * but only for names that are shared by at least two actors
 */

SELECT last_name, count(last_name) AS count_last_name FROM actor GROUP BY last_name HAVING COUNT(last_name) > 1 ORDER BY count_last_name DESC; 
