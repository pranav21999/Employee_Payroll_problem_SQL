#Employee PayRoll Problem
#uc1
#created:database payroll_service,
#1)
create database payroll_service;
show databases;
use payroll_service;
CREATE TABLE employee_payroll (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    salary DOUBLE NOT NULL,
    start DATE NOT NULL,
    PRIMARY KEY (id)
);
#--------------------------------------------------------------------------------------------------------------------------------------------------#
#uc3
#Inserted:valuses in the table
insert  into employee_payroll(name,salary, start) values
 ('pranav',600000.0,'2021-02-06'),
  ('sanket',400000.0,'2021-04-06'),
  ('abc',400000.0,'2021-04-06');
SELECT 
    *
FROM
    employee_payroll;
SELECT 
    *
FROM
    employee_payroll
WHERE
    name = 'pranav';
SELECT 
    *
FROM
    employee_payroll
WHERE
    start BETWEEN CAST('2021-02-06' AS DATE) AND DATE(NOW());
#--------------------------------------------------------------------------------------------------------------------------------------------------#
#uc6 
#Added:Ability to add Gender to Employee Payroll Table and Update the Rows to reflect the correct Employee Gender
alter table employee_payroll add gender char(1) after name;
UPDATE employee_payroll 
SET 
    gender = 'M'
WHERE
    name = 'pranav';
SELECT 
    salary
FROM
    employee_payroll;
SELECT 
    SUM(salary)
FROM
    employee_payroll;
SELECT 
    MIN(salary)
FROM
    employee_payroll;
SELECT 
    MAX(salary)
FROM
    employee_payroll;
SELECT 
    COUNT(salary)
FROM
    employee_payroll;
SELECT 
    AVG(salary)
FROM
    employee_payroll;
SELECT 
    SUM(salary)
FROM
    employee_payroll
WHERE
    gender = 'F'
GROUP BY gender;
#--------------------------------------------------------------------------------------------------------------------------------------------------#

#uc8 
#Ability to extend employee_payroll data to store employee informationlike employee phone, address and department - Ensure employee department
#query
alter table employee_payroll add phone varchar(15) ,add address varchar(20) default 'address1',add department varchar(20) not null;
UPDATE employee_payroll 
SET 
    department = 'sales'
WHERE
    name IN ('pranav' , 'sanket');
SELECT 
    *
FROM
    employee_payroll;
#--------------------------------------------------------------------------------------------------------------------------------------------------
#uc9
#Ability to extendemployee_payroll tableto have Basic Pay,Deductions, Taxable Pay,Income Tax, Net Pay
alter table employee_payroll 
add basic_pay int, 
add deductions int,
add taxable_pay int  ,
add tax int,
add net_pay int;
DELETE FROM employee_payroll 
WHERE
    id IN (1 , 2, 3, 4, 5, 6);

insert into employee_payroll (name,department,gender,basic_pay,deductions,taxable_pay,tax,net_pay,start,salary) values
	('Terissa','Marketing','F',3000000,1000000,2000000,500000,1500000,'2021-07-08',90000);
    
insert into employee_payroll (name,department,gender,basic_pay
,deductions,taxable_pay,tax,net_pay,start,salary) values
	('Terissa','Sales','F',3000000,
    0,0,0,0,'2021-06-01',89999);
#____________________________________________________________________________________________________________________________________________________
