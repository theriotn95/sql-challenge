-- Question 1
--List the following details of each employee: employee number, last name, first name, gender, and salary.
Select "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Employees".gender, "Salaries".salary
From "Employees"
Inner Join "Salaries" ON "Employees".emp_no = "Salaries".emp_no ;

--Question 2
--List employees who were hired in 1986.
Select * From "Employees" Where hire_date between '01-01-1986' and '12-31-1986';

--Question 3
--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
Select "Dept_Manager".dept_no, "Departments".dept_name, "Dept_Manager".emp_no, "Employees".last_name,
"Employees".first_name, "Employees".hire_date, "Dept_Manager".to_date
From "Dept_Manager"
Join "Departments" ON "Departments".dept_no = "Dept_Manager".dept_no
Join "Employees" ON "Employees".emp_no = "Dept_Manager".emp_no;

--Question 4 
--List the department of each employee with the following information: employee number, last name, first name, and department name.
Select "Employees".emp_no, "Employees".last_name, "Employees".first_name, 
"Departments".dept_name
From "Employees"
Join "Dept_Emp" ON "Employees".emp_no = "Dept_Emp".emp_no
Join "Departments" ON "Dept_Emp".dept_no = "Departments".dept_no;

--Question 5
--List all employees whose first name is "Hercules" and last names begin with "B."
Select * From "Employees"
Where first_name = 'Hercules'
And last_name like 'B%';

--Question 6 
--List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select "Employees".emp_no, "Employees".last_name, "Employees".first_name, 
"Departments".dept_name
From "Employees"
Inner Join "Dept_Emp" On "Employees".emp_no = "Dept_Emp".emp_no
Inner Join "Departments" On "Dept_Emp".dept_no = "Departments".dept_no
Where "Departments".dept_name = 'Sales';

--Question 7
--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select "Employees".emp_no, "Employees".last_name, "Employees".first_name, 
"Departments".dept_name
From "Employees"
Inner Join "Dept_Emp" On "Employees".emp_no = "Dept_Emp".emp_no
Inner Join "Departments" On "Dept_Emp".dept_no = "Departments".dept_no
Where "Departments".dept_name = 'Sales' Or "Departments".dept_name = 'Development';

--Question 8 
--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select last_name, Count(*) As "# of Employees With Last Name"
From "Employees" 
Group By last_name
Order By Count(*) desc, last_name;