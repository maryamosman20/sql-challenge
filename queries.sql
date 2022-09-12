SELECT employees.last_name, employees.first_name, employees.sex, salaries.salary, employees.emp_no
FROM employees
INNER JOIN salaries
ON salaries.emp_no = employees.emp_no;

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
Where extract(year from hire_date)= '1986'
ORDER BY hire_date NULLS LAST

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
LEFT JOIN departments
ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees
ON dept_manager.emp_no = employees.emp_no;

SELECT departments.dept_name, employees.last_name, employees.first_name, employees.emp_no
FROM dept_emp
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no
LEFT JOIN employees
ON dept_emp.emp_no = employees.emp_no
ORDER BY departments.dept_name NULLS LAST;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%';


SELECT departments.dept_name, employees.last_name, employees.first_name, employees.emp_no
FROM dept_emp
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no
LEFT JOIN employees
ON dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name = 'Sales'



SELECT departments.dept_name, employees.last_name, employees.first_name, employees.emp_no
FROM dept_emp
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no
LEFT JOIN employees
ON dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name = 'Sales' or departments.dept_name = 'Development'


SELECT last_name, COUNT(last_name) AS "last_name_frequency"
FROM employees
GROUP BY last_name
ORDER BY "last_name_frequency" DESC NULLS LAST;