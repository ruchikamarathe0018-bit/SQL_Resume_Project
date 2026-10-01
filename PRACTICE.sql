DROP TABLE IF EXISTS Employee;

CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary NUMERIC(10,2),
    City VARCHAR(50)
);

INSERT INTO Employee (Emp_ID, Name, Department, Salary, City)
VALUES
(1, 'Rahul', 'IT', 55000, 'Pune'),
(2, 'Priya', 'HR', 45000, 'Mumbai'),
(3, 'Amit', 'IT', 65000, 'Pune'),
(4, 'Neha', 'Finance', 70000, 'Delhi'),
(5, 'Riya', 'IT', 50000, 'Mumbai');

select * from Employee;
--Display all employees whose salary is greater than ₹50,000.
SELECT * FROM Employee
Where salary>50000;
--Find all employees who work in the IT department.
SELECT * FROM Employee
Where department='IT';
--Find employees who:work in ITAND have a salary greater than 50,000:
SELECT * FROM Employee
Where department='IT' AND salary>50000;
--Find employees who work in IT OR HR.
SELECT * FROM Employee
Where department='IT' OR department='HR';

SELECT * FROM Employee
Where department IN ('HR','IT');
--Find employees whose salary is between ₹45,000 and ₹65,000.
SELECT * FROM Employee 
WHERE salary between 45000 AND 65000;
--Find all employees whose name starts with P.
SELECT * FROM Employee
Where Name Like 'P%';
--Display all employees sorted by salary from highest to lowest.
SELECT * FROM Employee
ORDER by salary desc;
--Find employees whose name contains the letter a anywhere.
select * from employee
where name like '%a%';
--How many employees are there in the Employee table?
SELECT count(*) FROM Employee;
--Find the highest salary from the Employee table.
SELECT MAX(salary)FROM Employee;
--Find the average salary of all employees.
SELECT AVG(salary)from employee;
--Find the lowest salary from the Employee table.
SELECT MIN(salary)FROM Employee;
--Find the total salary of all employees.
SELECT SUM(salary)FROM Employee;
--Find how many employees are in each department.
SELECT Department, COUNT(Department)
FROM Employee
GROUP BY Department;sss

SELECT Department, COUNT(*)
FROM Employee
GROUP BY Department;
--Find departments where the average salary is greater than 50,000:
SELECT Department, AVG(Salary)
FROM Employee
GROUP BY Department
HAVING AVG(Salary) > 50000;
--Find the total salary paid by each department.
Select Department,sum(salary)
from Employee
GROUP BY Department;
--Find the average salary of employees in the IT department.
SELECT AVG(SALARY)FROM EMPLOYEE
WHERE Department='IT'
GROUP BY Department;
--Find the number of employees working in the IT department.
SELECT COUNT(*)FROM EMPLOYEE
WHERE DEPARTMENT='IT';
--Display all employees in highest salary → lowest salary order.
SELECT * FROM Employee
ORDER BY salary;
SELECT * FROM Employee
ORDER BY salary desc;
--Find employees who have a salary greater than ₹50,000 and display them from highest salary to lowest salary
SELECT *
FROM Employee
WHERE Salary > 50000
ORDER BY Salary DESC;
--Display all unique departments from the Employee table.
SELECT DISTINCT Department
FROM Employee;
--Find employees who live in Pune or Mumbai.
SELECT *
FROM Employee
WHERE City IN ('Pune', 'Mumbai');
--Now find employees who do NOT live in Pune or Mumbai.
SELECT *
FROM Employee
WHERE City NOT IN ('Pune', 'Mumbai');
--HOW TO ADD THE NULL VALUES 
INSERT INTO Employee (Emp_ID, Name, Department, Salary, City)
VALUES (6, 'Karan', 'IT', 60000, NULL);
SELECT * FROM Employee;

SELECT *
FROM Employee WHERE City ISNULL;