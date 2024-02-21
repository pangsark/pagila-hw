/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
SELECT first_name, last_name, sum(amount) AS sum
FROM staff
JOIN payment USING(staff_id)
WHERE EXTRACT(year FROM payment_date) = 2020 and EXTRACT(month FROM payment_date) = 1;
GROUP BY first_name, last_name, staff_id
ORDER BY sum;
