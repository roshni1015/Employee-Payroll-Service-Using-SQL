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
Alter Table Employee_payroll Alter Column Salary float

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

/* UC8 extend employee_payroll data and save more details */
ALTER TABLE Employee_payroll ADD Phone varchar(20), Address varchar(100) DEFAULT 'Empty' WITH VALUES, Department varchar(40) NOT NULL DEFAULT 'Developer';

/* UC9 extend employee_payroll table to have Basic Pay, Deductions, Taxable Pay, Income Tax, Net Pay*/
ALTER TABLE employee_payroll ADD BasicPay Float Not Null default 0; 
ALTER TABLE employee_payroll ADD Deductions Float Not Null default 0; 
ALTER TABLE employee_payroll ADD TaxablePay Float Not Null default 0;
ALTER TABLE employee_payroll ADD IncomeTax Float Not Null default 0;
ALTER TABLE employee_payroll ADD NetPay Float Not Null default 0;

select * from Employee_payroll

UPDATE Employee_payroll set BasicPay=30000.50 where Name='Roshni';
UPDATE Employee_payroll set BasicPay=40000 where Name='Lavanya';
UPDATE Employee_payroll set BasicPay=50000 where Name='Mahesh';
UPDATE Employee_payroll set BasicPay=25000 where Name='Vivek';
UPDATE Employee_payroll set BasicPay=15000.75 where Name='Priya';

/* UC10 Insert all values to the table */
ALTER TABLE Employee_payroll DROP COLUMN Salary

 Update Employee_payroll set 
 Phone=9999888877 ,Address='Pune', Department='FrontEnd', Deductions=2000, TaxablePay=1000, IncomeTax=2000, NetPay=25000 where name='Roshni'
 Update Employee_payroll set 
 Phone=9988558899 ,Address='Banglore', Department='Accounts', Deductions=3000, TaxablePay=1000, IncomeTax=3000, NetPay=33000 where name='Lavanya'
 Update Employee_payroll set 
 Phone=8877995544 ,Address='Mumbai', Department='Sales and Marketing', Deductions=2000, TaxablePay=1000, IncomeTax=4000, NetPay=43000 where name='Mahesh'
 Update Employee_payroll set 
 Phone=7744112233 ,Address='Chennai', Department='Testing', Deductions=1500, TaxablePay=1000, IncomeTax=1000, NetPay=21500 where name='Vivek'
 Update Employee_payroll set 
 Phone=7775553330 ,Address='Kolkata', Department='Backend', Deductions=1000, TaxablePay=500, IncomeTax=0, NetPay=13500 where name='Priya'

select * from Employee_payroll

Insert into Employee_payroll 
(Name, Gender, Phone, Address, Department, StartDate, BasicPay, Deductions, TaxablePay, IncomeTax, NetPay) values ('Roshni','F',8887779999,'Pune','Sales and Marketing','28/08/2021',20000,2000,1000,0,17000)

select * from Employee_payroll where Name='Roshni'
