#Employee PayRoll Problem
#uc1
#created:database payroll_service,
#1)
create database payroll_service;
show databases;
use payroll_service;
#--------------------------------------------------------------------------------------------------------------------------------------------------#
#uc2
#created:table for employee_payroll
#2)
create table employee_payroll(
	id int unsigned not null auto_increment,
    name varchar(30) not null,
    salary double not null,
    start date not null,
    primary key(id)
);
#--------------------------------------------------------------------------------------------------------------------------------------------------#
#uc3
#Inserted:valuses in the table
insert  into employee_payroll(name,salary, start) values
 ('pranav',600000.0,'2021-02-06'),
  ('sanket',400000.0,'2021-04-06'),
  ('abc',400000.0,'2021-04-06');
#--------------------------------------------------------------------------------------------------------------------------------------------------#
#uc4
#displayed:All Table information 
select * from employee_payroll;
#--------------------------------------------------------------------------------------------------------------------------------------------------#
 #uc5
 #Added:Ability to retrieve salary data for a particular employee as well as all employees who have joined in a particular data range from the payroll service database
 select * from employee_payroll where name='pranav';
  select * from employee_payroll where start between cast('2021-02-06' AS date) and Date(now());
#--------------------------------------------------------------------------------------------------------------------------------------------------#
#uc6 
#Added:Ability to add Gender to Employee Payroll Table and Update the Rows to reflect the correct Employee Gender
alter table employee_payroll add gender char(1) after name;
update  employee_payroll set gender='M' where name ='pranav';
#--------------------------------------------------------------------------------------------------------------------------------------------------#
#Uc7
#Ability to find sum, average, min, max and number of male and female employees
select salary from employee_payroll;
select sum(salary) from employee_payroll;  
select min(salary) from employee_payroll;  
select max(salary) from employee_payroll;  
select count(salary) from employee_payroll;  
select avg(salary) from employee_payroll;  
select sum(salary) from employee_payroll where
	gender='F' group by gender;
#--------------------------------------------------------------------------------------------------------------------------------------------------#