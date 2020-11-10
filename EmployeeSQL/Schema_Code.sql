-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Vhqp7T
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
CREATE TABLE departments(
	dept_no VARCHAR,
	dept_name VARCHAR,
	PRIMARY KEY (dept_no)
);

SELECT * FROM departments;

CREATE TABLE dept_emp(
	emp_no VARCHAR,
	dept_no VARCHAR
);

SELECT * FROM dept_emp;

CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no VARCHAR,
	PRIMARY KEY (dept_no, emp_no)
);

SELECT * FROM dept_manager;

CREATE TABLE employees(
	emp_no VARCHAR,
	emp_title_id VARCHAR,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR
);

SELECT * FROM employees;

CREATE TABLE salaries(
	emp_no INTEGER,
	salary INTEGER
);

SELECT * FROM salaries;

CREATE TABLE titles(
	emp_title_id VARCHAR,
	title VARCHAR,
	PRIMARY KEY (emp_title_id)
);

SELECT * FROM titles;

SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

COMMIT TRANSACTION QUICKDBD