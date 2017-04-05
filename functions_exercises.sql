SELECT count(*), gender 
FROM employees 
WHERE first_name IN ('Irena', 'Vidya', 'Maya') 
GROUP BY gender;


SELECT concat(first_name, " ", last_name) AS "Full Name" 
FROM employees 
WHERE concat(first_name, " ", last_name) LIKE 'E%e';


SELECT concat(first_name, " ", last_name) AS "Full Name", datediff(now(),hire_date) AS "Days Worked" 
FROM employees WHERE hire_date LIKE "199%" AND birth_date LIKE "%-12-25";


SELECT count(*), first_name, last_name 
FROM employees 
WHERE last_name LIKE "%q%" AND last_name NOT LIKE "%qu%" 
GROUP BY first_name, last_name
ORDER BY count(*) DESC;