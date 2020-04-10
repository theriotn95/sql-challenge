Select "Employees".emp_no, "Employees".last_name, "Employees".first_name, 
"Departments".dept_name
From "Employees"
Inner Join "Dept_Emp" On "Employees".emp_no = "Dept_Emp".emp_no
Inner Join "Departments" On "Dept_Emp".dept_no = "Departments".dept_no
Where "Departments".dept_name = 'Sales';





