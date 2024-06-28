DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

-- Create table for departments
CREATE TABLE departments (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(40) NOT NULL
);

-- Create table for dept_emp
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no CHAR(4) NOT NULL,
    PRIMARY KEY (emp_no, dept_no)
);

-- Create table for dept_manager
CREATE TABLE dept_manager (
    dept_no CHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (emp_no, dept_no)
);

-- Create table for employees
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(10),
    birth_date DATE NOT NULL,
    first_name VARCHAR(14) NOT NULL,
    last_name VARCHAR(16) NOT NULL,
    gender CHAR(1) NOT NULL,
    hire_date DATE NOT NULL
);

-- Create table for salaries
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
    salary INT NOT NULL
--    emp_no INT NOT NULL,
--    salary INT NOT NULL,
--    PRIMARY KEY (emp_no, salary)
);

-- Create table for titles
CREATE TABLE titles (
	title_id VARCHAR(10) NOT NULL,
    title VARCHAR(50) NOT NULL,
    PRIMARY KEY (title_id, title)
);

