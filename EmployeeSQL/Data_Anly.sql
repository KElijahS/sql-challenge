-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT Employees.employee_id, Employees.last_name, Employees.first_name, Employees.gender, Salarys.salary
FROM Employees
INNER JOIN Salarys 
ON Employees.employee_id = Salarys.employee_id;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT employee_id, first_name, last_name, hire_date 
FROM Employees
WHERE hire_date >= '1985-12-31'
AND hire_date < '1987-01-01';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT Dept_Manager.dept_id, 
Departments.dept_name, 
Dept_Manager.employee_id, 
Employees.last_name, 
Employees.first_name, 
Dept_Manager.from_date, 
Dept_Manager.to_date 
FROM Dept_Manager
INNER JOIN Departments 
ON Dept_Manager.dept_id = Departments.dept_id
INNER JOIN Employees 
ON Dept_Manager.employee_id = Employees.employee_id;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT Employees.employee_id, 
Employees.last_name, 
Employees.first_name,
Departments.dept_name
FROM Employees
INNER JOIN Dept_Manager 
ON Employees.employee_id = Dept_Manager.employee_id
INNER JOIN Departments 
ON Dept_Manager.dept_id = Departments.dept_id;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM Employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT a.employee_id, a.last_name, a.first_name, b.dept_name
FROM Employees AS a
JOIN Dept_Employees 
ON a.employee_id = Dept_Employees.employee_id
INNER JOIN Departments AS b 
ON Dept_Employees.dept_id = b.dept_id
WHERE dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT a.employee_id, a.last_name, a.first_name, b.dept_name
FROM Employees AS a
JOIN Dept_Employees 
ON a.employee_id = Dept_Employees.employee_id
INNER JOIN Departments AS b 
ON Dept_Employees.dept_id = b.dept_id
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) 
FROM Employees
GROUP BY last_name
ORDER BY count(last_name) desc;
