
create database Employees;
use Employees; 

create table Employees(
EMP_ID CHAR(5),
EMP_name varchar(50),
EMP_EMAIL Varchar(60),
EMP_salery int 
);

-- add
-- add a column emp_phone of type varchar to the employees table.
ALTER table Employees add emp_phone varchar(15);
DESC Employees; 

-- add a column data_of_joining of type DATE to the employees tables
ALTER table Employees add data_of_joining date;

-- add a column department of type Varchar(50) to the employees table
 ALTER table Employees add dept varchar(50);
 
 -- drop
 ALTER TABLE Employees drop location;
 -- drop the column emp_email,department,date_of_joining from the employees table
 ALTER TABLE Employees drop EMP_phone;
 ALTER TABLE Employees drop department;
 ALTER TABLE Employees drop   data_of_joining;

-- modify
-- add modify the emp_salary column to increase is precision to DECIMAL(12,2)
ALTER TABLE Employees modify EMP_salery decimal(12,2);
DESC Employees; 
-- add modify the emp_name column to change its types from Varchar(100) to Varchar(150)
ALTER TABLE Employees modify EMP_name varchar(150);

ALTER TABLE Employees add EMP_phone varchar(30); 
alter table Employees modify EMP_phone varchar(30) not null;

-- change
-- change name emp_name to employee_name 
alter table Employees change EMP_name employee_name varchar(150);

-- change column emp_salery to salary and make it Float 
Alter table Employees change EMP_salery salary float(10,2);
Alter table Employees modify salary decimal(10,2);
Alter table Employees modify salary float;
desc Employees;
-- change column emp_phone to mobile_number and make it varchar(20).
alter table Employees change EMP_phone mobile_number varchar(20); 


-- Rename
-- Rename the table employees to staff
alter table Employees rename to staff;
desc staff;
-- Rename the table staff to employees
alter table staff rename to Employees; 
-- Rename the table employees to company_employees
alter table Employees rename to company_employees;
desc company_employees;
