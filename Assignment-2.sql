CREATE DATABASE DAS_09;
USE DAS_09;
CREATE TABLE employees ( 
    emp_id INT PRIMARY KEY, 
    emp_name VARCHAR(100), 
    department VARCHAR(50), 
    job_role VARCHAR(50), 
    salary DECIMAL(10,2), 
    joining_date DATE, 
    city VARCHAR(50) 
); 
 select*from EMPLOYEES;
-- insert into employess 
insert into employees (emp_id, emp_name, department, job_role, salary, joining_date, city)
values 
(101, 'Ravi Kumar', 'IT', 'Developer', 45000, '2023-01-15', 'Vizag');
insert into employees (emp_id, emp_name, department, job_role, salary, joining_date, city)
values 
(102, 'Priya Sharma', 'HR', 'HR Manager', 55000, '2022-06-20', 'Hyderabad'),
(103, 'Kiran Reddy', 'IT', 'Tester', 40000, '2023-03-10', 'Vizag'), 
(104, 'Sneha Rao', 'Finance', 'Accountant', 48000, '2021-11-25', 'Chennai'), 
 (105, 'Arun Kumar', 'IT', 'Developer', 60000, '2020-08-18', 'Bangalore'), 
(106, 'Divya Reddy', 'HR', 'Recruiter', 35000, '2024-01-05', 'Vizag'), 
 (107, 'Suresh Babu', 'Sales', 'Executive', 42000, '2022-09-12', 'Hyderabad'),
 (108, 'Anjali Devi', 'IT', 'Developer', 70000, '2019-05-30', 'Chennai'), 
(109, 'Mahesh Kumar', 'Sales', 'Manager', 65000, '2020-02-14', 'Bangalore'), 
(110, 'Lakshmi Rao', 'Finance', 'Analyst', 52000, '2023-07-22', 'Hyderabad'); 
select * from employees;
SET SQL_SAFE_UPDATES = 0;
update employees set salary = 50000 where emp_name = 'Ravi kumar';
update employees set salary = salary*1.10 where department = 'IT';
update employees set city = 'vizag' where emp_name = 'Priya Sharma'; 
update employees set job_role = 'Senior Tester' where  emp_name = 'Kiran Reddy';
update employees set salary = 5000 where department = 'HR';
update employees set salary = 50000 where department = 'HR'; 
update employees set salary = 5000 + salary where department = 'HR';
update employees set city = 'Hyderabad' where city = 'Vizag';
update employees set department = 'Development' where emp_name = 'Arun Kumar';
update employees set salary = salary*1.15 where salary <45000; 
update employees set job_role = 'Senior developer' where  emp_name = 'Anjali Devi';
update employees set city = 'Bangalore' where department = 'Finance';
select * from employees; 


-- delete 
DELETE FROM Employees where emp_id = 106; 
DELETE FROM Employees where department = 'Finance';
DELETE FROM Employees where salary <40000;
DELETE FROM Employees where city = 'Vizag';
DELETE FROM Employees where emp_name = 'Suresh Babu'; 
DELETE FROM Employees where joining_date < '2020-01-01';
DELETE FROM Employees where jod_role = 'Recruiters';
DELETE FROM Employees where department = 'sales' and  salary < 50000;
DELETE FROM Employees where salary <55000 ;
DELETE FROM Employees where city = 'chennai';

-- select(DQL)QUestion 
select * from employees; 
select * from employees where department='IT'; 
select * from employees where salary > 50000;
select emp_name,salary from employees; 
select *from employees where city='Vizag';
select *from employees where joining_date <2022-01-01;
select * from employees where 40000 and 60000;

 
