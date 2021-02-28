SELECT * FROM employees

--SELECT first_name, last_name, hire_date
--FROM employees
--WHERE hire_date >01/01/1985 and hire_date <01/01/1987

--List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT * FROM salaries

SELECT e.id, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
LEFT JOIN salaries as s
ON (e.id = s.emp_no);

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

SELECT * FROM departments

SELECT e.first_name, e.last_name, dm.emp_no, dm.dept_no, d.dept_name
FROM dept_manager as dm
INNER JOIN employees as e 
ON (dm.emp_no = e.id)
INNER JOIN departments as d
ON (dm.dept_no = d.id);
  
  --List the department of each employee with the following information: 
  --employee number, last name, first name, and department name.
  
SELECT e.first_name, e.last_name, d.dept_name, e.id
FROM employees as e
INNER JOIN dept_emp AS de
ON (e.id = de.emp_no)
INNER JOIN departments as d
ON (de.dept_no = d.id)

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%';

--List all employees in the Sales department,
--including their employee number, last name, first name, and department name.

SELECT e.first_name, e.last_name, d.dept_name, e.id
FROM employees as e
INNER JOIN dept_emp AS de
ON (e.id = de.emp_no)
INNER JOIN departments as d
ON (de.dept_no = d.id)
WHERE d.dept_name = 'Sales';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

SELECT e.first_name, e.last_name, d.dept_name, e.id
FROM employees as e
INNER JOIN dept_emp AS de
ON (e.id = de.emp_no)
INNER JOIN departments as d
ON (de.dept_no = d.id)
WHERE d.dept_name = 'Sales' or d.dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name 
ORDER BY COUNT(last_name) DESC;