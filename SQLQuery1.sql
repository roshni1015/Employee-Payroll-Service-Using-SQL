/*UC1 to create a payroll service database*/
create database Employee_Payroll_service;
use Employee_Payroll_service

/* UC2 create a employee payroll table in the payroll service database*/
create table Employee_payroll1(Id int identity(1,1) primary key,Name varchar(20),Salary varchar(10),StartDate varchar(20))

/* UC3 create employee payroll data */
insert into Employee_payroll1(Name, Salary, StartDate) values ('Roshni','40000','26/08/2021')
insert into Employee_payroll1(Name, Salary, StartDate) values ('Lavanya','50000','25/08/2021')
insert into Employee_payroll1(Name, Salary, StartDate) values ('Mahesh','60000','27/08/2021')
insert into Employee_payroll1(Name, Salary, StartDate) values ('Vivek','35000','26/08/2021')
insert into Employee_payroll1(Name, Salary, StartDate) values ('Priya','25000','26/08/2021')

/* UC4 retrieve all the employee payroll data */
select * from Employee_payroll1

/*UC5 retrieve salary data on a condition */
SELECT Salary,Name FROM Employee_payroll1 WHERE Name = 'Priya'
Select Salary,Name from Employee_payroll1 where StartDate between ('25/08/2021') and ('26/08/2021')

/* UC6 add Gender to Employee Payroll Table and Update the Rows */
ALTER TABLE Employee_payroll1 ADD Gender varchar(6);
UPDATE Employee_payroll1 set Gender = 'M' where  Name='Mahesh' or Name = 'Vivek' 
UPDATE Employee_payroll1 set Gender = 'F' where  Name='Roshni' or Name = 'Lavanya' or Name = 'Priya'

/* UC7 use of Database functions with GroupBy */
Alter Table Employee_payroll1 Alter Column Salary float

Select SUM(Salary) From Employee_payroll1 Where Gender='M' Group by Gender
Select SUM(Salary) From Employee_payroll1 Where Gender='F' Group by Gender

Select AVG(Salary) From Employee_payroll1 Where Gender='M' Group by Gender
Select AVG(Salary) From Employee_payroll1 Where Gender='F' Group by Gender

Select MIN(Salary) From Employee_payroll1 Where Gender='M' Group by Gender
Select MIN(Salary) From Employee_payroll1 Where Gender='F' Group by Gender

Select MAX(Salary) From Employee_payroll1 Where Gender='M' Group by Gender
Select MAX(Salary) From Employee_payroll1 Where Gender='F' Group by Gender

Select COUNT(Salary) From Employee_payroll1 Where Gender='M' Group by Gender
Select COUNT(Salary) From Employee_payroll1 Where Gender='F' Group by Gender

/* UC8 extend employee_payroll data and save more details */
ALTER TABLE Employee_payroll1 ADD Phone varchar(20), Address varchar(100) DEFAULT 'Empty' WITH VALUES, Department varchar(40) NOT NULL DEFAULT 'Developer';


 Update Employee_payroll1 set 
 Phone=9999888877 ,Address='Pune', Department='FrontEnd', Deductions=2000, TaxablePay=1000, IncomeTax=2000, NetPay=25000 where name='Roshni'
 Update Employee_payroll1 set 
 Phone=9988558899 ,Address='Banglore', Department='Accounts', Deductions=3000, TaxablePay=1000, IncomeTax=3000, NetPay=33000 where name='Lavanya'
 Update Employee_payroll1 set 
 Phone=8877995544 ,Address='Mumbai', Department='Sales', Deductions=2000, TaxablePay=1000, IncomeTax=4000, NetPay=43000 where name='Mahesh'
 Update Employee_payroll1 set 
 Phone=7744112233 ,Address='Chennai', Department='Marketing', Deductions=1500, TaxablePay=1000, IncomeTax=1000, NetPay=21500 where name='Vivek'
 Update Employee_payroll1 set 
 Phone=7775553330 ,Address='Kolkata', Department='Backend', Deductions=1000, TaxablePay=500, IncomeTax=0, NetPay=13500 where name='Priya'

select * from Employee_payroll1

/* UC9 extend employee_payroll table to have Basic Pay, Deductions, Taxable Pay, Income Tax, Net Pay*/
ALTER TABLE employee_payroll1 ADD BasicPay Float Not Null default 0; 
ALTER TABLE employee_payroll1 ADD Deductions Float Not Null default 0; 
ALTER TABLE employee_payroll1 ADD TaxablePay Float Not Null default 0;
ALTER TABLE employee_payroll1 ADD IncomeTax Float Not Null default 0;
ALTER TABLE employee_payroll1 ADD NetPay Float Not Null default 0;

select * from Employee_payroll1

UPDATE Employee_payroll1 set BasicPay=30000.50 where Name='Roshni';
UPDATE Employee_payroll1 set BasicPay=40000 where Name='Lavanya';
UPDATE Employee_payroll1 set BasicPay=50000 where Name='Mahesh';
UPDATE Employee_payroll1 set BasicPay=25000 where Name='Vivek';
UPDATE Employee_payroll1 set BasicPay=15000.75 where Name='Priya';

/* UC10 Insert all values to the table */
Insert into employee_payroll1 Values ('Terisa', 50000, '26/08/2021','F','9876543276','Mumbai','Sales',25000,2000,1000,1000,15000);
Insert into employee_payroll1 Values ('Terisa', 50000, '27/08/2021','F','9234567897','Mumbai','Marketing',30000,1500,1000,1000,20000);


/* UC11 ER Diagram */
Create Table Company (CompID INT PRIMARY KEY, CompName varchar(40));

Select * from Company

create table Employees(EmpID int PRIMARY KEY,
					  Name varchar(20),
					  CompId INT REFERENCES Company(CompID),
					  Phone varchar(20),
					  Address varchar(200),
					  Gender char  );

Select* from Employees

Create Table Payroll(EmpID INT REFERENCES Employees(EmpID),
					 BasicPay decimal,
					 Deduction decimal, 
					 TaxablePay decimal,
					 IncomeTax decimal,
					 NetPay decimal  );

Select* from Payroll

Create Table Department(DeptName VARCHAR(10),
						EmpID INT REFERENCES Employees(EmpID),
						DeptID int PRIMARY KEY  );

Select* from Department;
