-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
Select e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s
ON (e.emp_no = s.emp_no)
;

-- 2.List first name, last name, and hire date for employees who were hired in 1986.
Select first_name, last_name, hire_date
FROM employees
where hire_date >= '1986-01-01' and hire_date <= '1986-12-31'
order by hire_date

-- 3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager AS d_m
JOIN employees AS e
ON (e.emp_no = d_m.emp_no)
JOIN departments as d
ON (d_m.dept_no = d.dept_no)
order by emp_no
;



-- 4.List the department of each employee with the following information: employee number, last name, first name, and department name.
Select e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
join dept_emp AS d_e
ON (e.emp_no = d_e.emp_no)
JOIN departments as d
ON (d_e.dept_no = d.dept_no)
ORDER BY emp_no
;



-- 5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select first_name, last_name, sex
FROM employees
where first_name = 'Hercules' and last_name Like 'B%'


-- 6.List all employees in the Sales department, including their employee number, last name, first name, and department name.

Select e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
join dept_emp AS d_e
ON (e.emp_no = d_e.emp_no)
left JOIN departments as d
ON (d_e.dept_no = d.dept_no)
where dept_name = 'Sales'
order by emp_no
;


-- 7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

Select e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
join dept_emp AS d_e
ON (e.emp_no = d_e.emp_no)
left JOIN departments as d
ON (d_e.dept_no = d.dept_no)
where dept_name in ('Sales', 'Development')
order by emp_no
;




-- 8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select last_name, count(*) as frequency_count
FROM employees
group by last_name
order by frequency_count desc;

