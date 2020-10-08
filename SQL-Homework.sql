-- Data Analysis 
-- Question 1
select emp.emp_no, last_name, first_name, sex, salary 
from employees as emp
inner join salaries as sal
on emp.emp_no = sal.emp_no

-- Question 2
select first_name, last_name, hire_date 
from employees 
where to_char(hire_date,'YYYY') = '1986'

-- Question 3
select dpm.dept_no, dept.dept_name, dpm.emp_no, emp.first_name, emp.last_name from dept_manager dpm
inner join departments dept  
on dept.dept_no = dpm.dept_no
inner join employees emp
on emp.emp_no = dpm.emp_no

-- Question 4
select emp.emp_no, emp.last_name, emp.first_name, dept.dept_name from employees emp
join dept_manager dpm
on dpm.emp_no = emp.emp_no
join departments dept
on dept.dept_no = dpm.dept_no

-- Question 5
select first_name, last_name, sex from employees
where first_name like 'Hercules%'
and last_name like 'B%'

-- Question 6
select emp.emp_no, emp.last_name, emp.first_name, dept.dept_name from employees emp 
join dept_manager dpm
on dpm.emp_no = emp.emp_no
join departments dept
on dept.dept_name = 'Sales'

-- Question 7
select emp.emp_no, emp.last_name, emp.first_name, dept.dept_name from employees emp 
join dept_manager dpm
on dpm.emp_no = emp.emp_no
join departments dept
on dept.dept_name = 'Development'

-- Question 8
select count(emp.last_name) as clm, emp.last_name from employees emp
group by emp.last_name 
order by clm desc
