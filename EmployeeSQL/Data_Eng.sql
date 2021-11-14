CREATE TABLE Employees (
    employee_id INT,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    gender VARCHAR,
    hire_date DATE,
	PRIMARY KEY (employee_id)
);
SELECT * from Employees;

CREATE TABLE Departments (
    dept_id VARCHAR,
    dept_name VARCHAR,
	PRIMARY KEY (dept_id)
);
select * from Departments;

CREATE TABLE Dept_Employees (
    employee_id INT,
	dept_id VARCHAR,
    from_date DATE,
    to_date DATE,
	FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
	FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);
select * from Dept_Employees;

CREATE TABLE Dept_Manager (
    dept_id VARCHAR,
    employee_id INT,
    from_date DATE,
    to_date DATE,
	FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
	FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);
SELECT * from Dept_Manager;


CREATE TABLE Salarys (
    employee_id INT,
	salary INT,
    from_date DATE,
    to_date DATE,    
	FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);
SELECT * from Salarys;


CREATE TABLE Titles (
	employee_id INT,
    title VARCHAR,
    from_date DATE,
    to_date DATE,
	FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);
SELECT * from Titles;
