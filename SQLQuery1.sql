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

/* UC6 add Gender to Employee Payroll Table and Update the Rows */
ALTER TABLE Employee_payroll ADD Gender varchar(6);
UPDATE Employee_payroll set Gender = 'M' where  Name='Mahesh' or Name = 'Vivek' 
UPDATE Employee_payroll set Gender = 'F' where  Name='Roshni' or Name = 'Lavanya' or Name = 'Priya'

/* UC7 use of Database functions with GroupBy */
Select SUM(Salary) From Employee_payroll Where Gender='M' Group by Gender
Select SUM(Salary) From Employee_payroll Where Gender='F' Group by Gender

Select AVG(Salary) From Employee_payroll Where Gender='M' Group by Gender
Select AVG(Salary) From Employee_payroll Where Gender='F' Group by Gender

Select MIN(Salary) From Employee_payroll Where Gender='M' Group by Gender
Select MIN(Salary) From Employee_payroll Where Gender='F' Group by Gender

Select MAX(Salary) From Employee_payroll Where Gender='M' Group by Gender
Select MAX(Salary) From Employee_payroll Where Gender='F' Group by Gender

Select COUNT(Salary) From Employee_payroll Where Gender='M' Group by Gender
Select COUNT(Salary) From Employee_payroll Where Gender='F' Group by Gender
