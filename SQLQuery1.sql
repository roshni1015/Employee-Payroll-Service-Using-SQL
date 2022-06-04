/*UC1 to create a payroll service database*/
create database Employee_Payroll_service;
use Employee_Payroll_service

/* UC2 create a employee payroll table in the payroll service database*/
create table Employee_payroll(Id int identity(1,1) primary key,Name varchar(20),Salary varchar(10),StartDate varchar(20))

/* UC3 create employee payroll data */
insert into Employee_payroll(Name, Salary, StartDate) values ('Roshni','40000','26/08/2021')
insert into Employee_payroll(Name, Salary, StartDate) values ('Lavanya','50000','25/08/2021')
insert into Employee_payroll(Name, Salary, StartDate) values ('Mahesh','60000','27/08/2021')
insert into Employee_payroll(Name, Salary, StartDate) values ('Vivek','35000','26/08/2021')
insert into Employee_payroll(Name, Salary, StartDate) values ('Priya','25000','26/08/2021')

/* UC4 retrieve all the employee payroll data */
select * from Employee_payroll

/*UC5 retrieve salary data on a condition */
SELECT Salary,Name FROM Employee_payroll WHERE Name = 'Priya'
Select Salary,Name from Employee_payroll where StartDate between ('25/08/2021') and ('26/08/2021')