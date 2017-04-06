
SELECT dept_name AS "Department Name", concat(e.first_name, " ", e.last_name) AS "Department Manager"
FROM employees AS e
JOIN dept_manager AS dm
	ON dm.emp_no = e.emp_no
JOIN departments AS d
	ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';




SELECT dept_name AS "Department Name", concat(e.first_name, " ", e.last_name) AS "Department Manager"
FROM employees AS e
JOIN dept_manager AS dm
	ON dm.emp_no = e.emp_no
JOIN departments AS d
	ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND gender = "F";




SELECT title AS "Title", count(*) AS "Count"
FROM titles AS t
JOIN dept_emp AS de
ON t.emp_no = de.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE dept_name = "Customer Service" AND t.to_date = "9999-01-01"
GROUP BY title;




SELECT dept_name AS "Department NAME", concat(e.first_name, " ", e.last_name) AS "Department Manager", salary AS "Salary"
FROM employees AS e
JOIN dept_manager AS dm
	ON dm.emp_no = e.emp_no
JOIN departments AS d
	ON d.dept_no = dm.dept_no
JOIN salaries AS s
	ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';




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