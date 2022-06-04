/*UC1 to create a payroll service database*/
create database Employee_Payroll_service;
use Employee_Payroll_service

/* UC2 create a employee payroll table in the payroll service database*/
create table Employee_payroll(Id int identity(1,1) primary key,Name varchar(20),Salary varchar(10),StartDate varchar(20))