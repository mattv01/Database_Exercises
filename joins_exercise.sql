-- write a query that shows each department along with the name of the current manager for that department.
SELECT dept_name AS "Department Name", concat(e.first_name, " ", e.last_name) AS "Department Manager"
FROM employees AS e
JOIN dept_manager AS dm
	ON dm.emp_no = e.emp_no
JOIN departments AS d
	ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';



-- Find the name of all departments currently managed by women.
SELECT dept_name AS "Department Name", concat(e.first_name, " ", e.last_name) AS "Department Manager"
FROM employees AS e
JOIN dept_manager AS dm
	ON dm.emp_no = e.emp_no
JOIN departments AS d
	ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND gender = "F";



-- Find the current titles of employees currently working in the Customer Service department.
SELECT title AS "Title", count(*) AS "Count"
FROM titles AS t
JOIN dept_emp AS de
	ON t.emp_no = de.emp_no
JOIN departments AS d
	ON d.dept_no = de.dept_no
WHERE d.dept_no = "d009" AND t.to_date = "9999-01-01" AND de.to_date = "9999-01-01"
GROUP BY title;



-- Find the current salary of all current managers.
SELECT dept_name AS "Department NAME", concat(e.first_name, " ", e.last_name) AS "Department Manager", salary AS "Salary"
FROM employees AS e
JOIN dept_manager AS dm
	ON dm.emp_no = e.emp_no
JOIN departments AS d
	ON d.dept_no = dm.dept_no
JOIN salaries AS s
	ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';



-- Bonus Find the names of all current employees, their department name, and their current manager's name.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', dept_name AS 'Department Name', CONCAT(manager.first_name, ' ', manager.last_name) AS 'Manager Name'
FROM employees AS e
JOIN dept_emp AS de
	ON e.emp_no = de.emp_no
JOIN departments AS d
	ON d.dept_no = de.dept_no
JOIN dept_manager AS dm
	ON dm.dept_no = d.dept_no
JOIN employees AS manager
	ON manager.emp_no = dm.emp_no
WHERE de.to_date ='9999-01-01' AND dm.to_date = '9999-01-01';





-- ******* EXTRA BONUS PRACTICE **********


-- historic average salary of female managers vs. male managers
SELECT gender, AVG(salary)
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN salaries AS s
ON s.emp_no = dm.emp_no
GROUP BY gender;

-- Current average salary of female managers vs. male managers
SELECT gender, AVG(salary)
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN salaries AS s
ON s.emp_no = dm.emp_no
WHERE dm.to_date > now() AND s.to_date > now()
GROUP BY gender;

-- Historic average salary of female workers vs. male workers
SELECT gender, AVG(salary)
FROM employees AS e
JOIN salaries AS s
ON s.emp_no = e.emp_no
GROUP BY gender;

-- Current average salary of female workers vs. male workers
SELECT gender, AVG(salary)
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN salaries AS s
ON s.emp_no = e.emp_no
WHERE de.to_date > now() AND s.to_date > now()
GROUP BY gender;

-- Current count of female managers vs male managers
SELECT gender, COUNT(*)
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = dm.dept_no
 WHERE dm.to_date > now()
 GROUP BY gender;

-- Current count of female engineers vs male engineers
SELECT gender, COUNT (*)
FROM titles AS t
JOIN employees AS e
 ON t.emp_no = e.emp_no
WHERE title = 'engineer' AND t.to_date > now()
GROUP BY gender;