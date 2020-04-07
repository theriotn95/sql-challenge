-- Question 1 
Select "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Employees".gender, "Salaries".salary
From "Employees"
Inner Join "Salaries" ON "Employees".emp_no = "Salaries".emp_no ;

--Question 2
Select * From "Employees" Where hire_date between '01-01-1986' and '12-31-1986';

--Question 3