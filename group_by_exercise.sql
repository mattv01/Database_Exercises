SELECT DISTINCT title FROM titles;

SELECT DISTINCT title FROM titles ORDER BY title;

SELECT last_name FROM employees WHERE last_name LIKE 'E%e' GROUP BY last_name;
SELECT first_name, last_name FROM employees WHERE last_name LIKE 'E%e' GROUP BY first_name, last_name;

SELECT last_name FROM employees WHERE last_name LIKE "%q%" AND last_name NOT LIKE "%qu%" GROUP BY last_name;
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE "%q%" AND last_name NOT LIKE "%qu%";