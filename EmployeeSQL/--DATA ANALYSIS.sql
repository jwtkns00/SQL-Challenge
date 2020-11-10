--DATA ANALYSIS
--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM employees
INNER JOIN salaries
ON salaries.emp_no = 
employees.emp_no;

-- List employees hired in 1986
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	employees.hire_date
FROM employees
INNER JOIN salaries
ON salaries.emp_no = employees.emp_no
WHERE employees.hire_date LIKE '1986%';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT DISTINCT dept_manager.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	employees.last_name,
	employees.first_name
FROM employees
INNER JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
INNER JOIN departments
ON dept_manager.dept_no = departments.dept_no
ORDER BY emp_no;


--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT DISTINCT dept_emp.emp_no,
	employees.first_name,
	employees.last_name,
	departments.dept_name  
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON  dept_emp.dept_no = departments.dept_no
ORDER BY emp_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT employees.last_name,
	employees.first_name
FROM employees
WHERE employees.first_name LIKE 'Hercules' 
AND employees.last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT DISTINCT employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'
ORDER BY emp_no;

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT DISTINCT employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development'
ORDER BY emp_no;

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT employees.last_name,
	COUNT(employees.emp_no)
FROM employees
GROUP BY employees.last_name
ORDER BY COUNT(employees.emp_no)
DESC;