create database dhruv;

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,          -- Unique Employee ID
    emp_name VARCHAR(100) NOT NULL,  -- Employee Name
    department_id INT,               -- Department ID (Foreign Key)
    position VARCHAR(50),            -- Employee Position
    salary DECIMAL(10,2)             -- Salary with 2 decimal places
);

INSERT INTO employee (emp_id, emp_name, department_id, position, salary) 
VALUES 
(1, 'John Doe', 101, 'Manager', 75000.00),
(2, 'Jane Smith', 102, 'Developer', 65000.00),
(3, 'Alice Brown', 101, 'HR Executive', 50000.00),
(4, 'Bob White', 103, 'Sales Executive', 60000.00);

select * from employee;
select distinct * from employee;
select position,max(salary) from employee group by position;
select max(salary) , emp_name from employee;
select * from employee order by salary desc limit 3;
with cte as (select distinct * from employee
)
select * from cte order by salary asc limit 3;

with cte as (select * ,row_number() over(order by salary asc ) rn from employee
)
select * from cte where rn=2;

select * ,  row_number() over(partition by position order by salary desc ) rn from employee;


with cte as (select * ,row_number() over (partition by position order by salary asc) rn from employee
)
select * from cte where rn = 1;

CREATE TABLE emp (
    emp_id INT PRIMARY KEY,          
    emp_name VARCHAR(100) NOT NULL,  
    department_id INT,               
    position VARCHAR(50),            
    salary DECIMAL(10,2)             
);
INSERT INTO emp (emp_id, emp_name, department_id, position, salary) 
VALUES 
(1, 'John Doe', 101, 'Manager', 75000.00),
(2, 'Jane Smith', 102, 'Developer', 65000.00),
(3, 'Alice Brown', 101, 'HR Executive', 50000.00),
(4, 'Bob White', 103, 'Sales Executive', 60000.00),
(5, 'Tom Johnson', 104, 'Technician', 55000.00),
(6, 'Emma Wilson', NULL, 'Analyst', 58000.00);  -- No department assigned

CREATE TABLE department (
    department_id INT PRIMARY KEY,  
    department_name VARCHAR(50)     
);
INSERT INTO department (department_id, department_name) 
VALUES 
(101, 'HR'),
(102, 'IT'),
(103, 'Sales'),
(105, 'Marketing');  -- This department has no employees

select * from emp;
select * from department;


select * from emp join department on emp.department_id = department.department_id;
select * from emp left join department on emp.department_id= department.department_id;
select * from emp right join department on emp.department_id = department.department_id;
select * from emp;
select * into table4 from emp where 1=2;
select MONTH(current_timestamp());




