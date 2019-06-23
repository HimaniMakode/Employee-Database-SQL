-- select * from department;
-- select * from dept_emp;
-- select * from dept_manager;
-- select * from employee;
-- select * from salaries; 
-- select * from titles;

-- 1. List the following details of each employee: employee number,last name, first name, gender, and salary.
SELECT e.emp_no, e.first_name, e.last_name, e.gender, s.salary 
FROM employee e 
INNER JOIN salaries s ON e.emp_no = s.emp_no;

-- 2. List employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM employee 
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- 3. List the manager of each department with the following information: department number,
--department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date 
FROM employee e 
JOIN dept_manager m ON e.emp_no = m.emp_no 
JOIN department d ON m.dept_no = d.dept_no
GROUP BY d.dept_name, d.dept_no, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employee e 
JOIN dept_emp de ON e.emp_no = de.emp_no 
JOIN department d ON de.dept_no = d.dept_no
GROUP BY e.emp_no, e.last_name, e.first_name, d.dept_name;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name 
FROM employee 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employee e 
JOIN dept_emp de ON e.emp_no = de.emp_no 
JOIN department d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employee e 
JOIN dept_emp de ON e.emp_no = de.emp_no 
JOIN department d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, count(last_name) as name_frequency 
FROM employee
GROUP BY last_name
ORDER BY name_frequency desc;