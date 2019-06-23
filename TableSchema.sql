-- DROP TABLE Department;
-- DROP TABLE Employee; 
-- DROP TABLE Dept_emp;
-- DROP TABLE Dept_manager;
-- DROP TABLE Titles;
-- DROP TABLE Salaries;

CREATE TABLE Department(
	dept_no VARCHAR NOT NULL,
    PRIMARY KEY (dept_no),
	dept_name VARCHAR NOT NULL
);

CREATE TABLE Employee(
	emp_no INTEGER NOT NULL,
    PRIMARY KEY (emp_no),
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL	
);

CREATE TABLE Dept_emp(
	emp_no INTEGER NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employee(emp_no),
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Department(dept_no),
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);
CREATE TABLE Dept_manager(
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Department(dept_no),
	emp_no INTEGER NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employee(emp_no),
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

CREATE TABLE Titles(
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employee(emp_no),
	title VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL		
);

CREATE TABLE Salaries(
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employee(emp_no),
	salary INTEGER NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL		
);
