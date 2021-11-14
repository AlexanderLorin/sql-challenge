-- Create tables for departments
CREATE TABLE departments (
  dept_no VARCHAR(4) NOT NULL,
  dept_name VARCHAR(50) NOT NULL
);

-- Create tables for dept_emp
CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no VARCHAR(4) NOT NULL
);

-- Create tables for dept_manager
CREATE TABLE dept_manager (
  dept_no VARCHAR(4) NOT NULL,
  emp_no INT NOT NULL
);

-- Create tables for employees
CREATE TABLE employees (
  emp_no INT NOT NULL,
  emp_title VARCHAR(5) NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  sex VARCHAR(1) NOT NULL,
  hire_date DATE NOT NULL
);

-- Create tables for salaries
CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT
);

-- Create tables for titles
CREATE TABLE titles (
  title_id VARCHAR(5) NOT NULL,
  title VARCHAR(50)
);

