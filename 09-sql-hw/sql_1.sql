SELECT employees.emp_no, last_name, first_name, gender, salary
FROM employees INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;
