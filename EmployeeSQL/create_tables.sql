-- DROP TABLE if exists titles;
CREATE TABLE titles(
    title_id text NOT NULL,
    title text NOT NULL,
    PRIMARY KEY (title_id));

-- DROP TABLE if exists employees;
CREATE TABLE employees(
    emp_no int NOT NULL,
    emp_title_id text NOT NULL,
    birth_date date NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    sex text NOT NULL,
    hire_date date NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));

-- DROP TABLE if exists departments;
CREATE TABLE departments(
	dept_no text NOT NULL,
    dept_name text NOT NULL,
	PRIMARY KEY (dept_no));

-- DROP TABLE if exists dept_emp;
CREATE TABLE dept_emp(
    emp_no int,
    dept_no text,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no));

-- DROP TABLE if exists dept_manager;
CREATE TABLE dept_manager(
    dept_no text NOT NULL,
    emp_no int NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

-- DROP TABLE if exists salaries;
CREATE TABLE salaries(
    emp_no int NOT NULL,
    salary int NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));