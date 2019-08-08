SELECT employees.emp_no, last_name, first_name, gender, salary
FROM employees INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT employees.emp_no, last_name, first_name
FROM employees
WHERE EXTRACT (YEAR FROM hire_date) = 1986;

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name,
employees.first_name, dept_manager.from_date, dept_manager.to_date
FROM departments, dept_manager, employees
WHERE departments.dept_no = dept_manager.dept_no
AND dept_manager.emp_no = employees.emp_no;

SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_no
FROM dept_emp, employees
WHERE employees.emp_no = dept_emp.emp_no;

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp, employees, departments
WHERE employees.emp_no = dept_emp.emp_no
AND dept_emp.dept_no = departments.dept_no;


SELECT employees.last_name, employees.first_name
FROM employees
WHERE first_name = 'Hercules' AND LEFT(last_name, 1) = 'B';

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees, departments, dept_emp
WHERE dept_emp.dept_no = departments.dept_no
AND employees.emp_no = dept_emp.emp_no
AND departments.dept_name = 'Sales';

/* Query with this next section didn't complete so I ended up canceling.  When I run query for just Sales it exceutes, just Development executes.
When I join with OR statement query seems to be in endless loop */

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees, departments, dept_emp
WHERE dept_emp.dept_no = departments.dept_no
AND employees.emp_no = dept_emp.emp_no
AND departments.dept_name = 'Sales' OR departments.dept_name = 'Development';


SELECT last_name, COUNT(*) AS freq_count
FROM employees
GROUP BY last_name
ORDER BY freq_count DESC;
