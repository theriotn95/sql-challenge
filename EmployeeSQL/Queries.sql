-- Question 1 
Select "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Employees".gender, "Salaries".salary
From "Employees"
Inner Join "Salaries" ON "Employees".emp_no = "Salaries".emp_no ;

--Question 2
Select * From "Employees" Where hire_date between '01-01-1986' and '12-31-1986';

--Question 3
Select "Dept_Manager".dept_no, "Departments".dept_name, "Dept_Manager".emp_no, "Employees".last_name,
"Employees".first_name, "Employees".hire_date, "Dept_Manager".to_date
From "Dept_Manager"
Join "Departments" ON "Departments".dept_no = "Dept_Manager".dept_no
Join "Employees" ON "Employees".emp_no = "Dept_Manager".emp_no;

--Question 4 
Select "Employees".emp_no, "Employees".last_name, "Employees".first_name, 
"Departments".dept_name
From "Employees"
Join "Dept_Emp" ON "Employees".emp_no = "Dept_Emp".emp_no
Join "Departments" ON "Dept_Emp".dept_no = "Departments".dept_no;

--Question 5
Select * From "Employees"
Where first_name = 'Hercules'
And last_name like 'B%';

--Question 6 
Select "Employees".emp_no, "Employees".last_name, "Employees".first_name, 
"Departments".dept_name
From "Employees"
Inner Join "Dept_Emp" On "Employees".emp_no = "Dept_Emp".emp_no
Inner Join "Departments" On "Dept_Emp".dept_no = "Departments".dept_no
Where "Departments".dept_name = 'Sales';