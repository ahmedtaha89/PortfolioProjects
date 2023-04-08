create database test_99;

Create Table EmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
);

Create Table EmployeeSalary 
(EmployeeID int, 
JobTitle varchar(50), 
Salary int
)


Insert into EmployeeDemographics VALUES
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male')


Insert Into EmployeeSalary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000)



select * from EmployeeDemographics;

select Gender from EmployeeDemographics;

select distinct Gender from EmployeeDemographics;

select count(EmployeeID) from EmployeeDemographics;

select age from EmployeeDemographics;

select max(age) from EmployeeDemographics;

select min(age) as min_age from EmployeeDemographics;

select avg(age) as min_age from EmployeeDemographics;

SELECT TOP 5 * FROM EmployeeDemographics;



select * from EmployeeDemographics 
where EmployeeID = 1; 


select * from EmployeeDemographics 
where FirstName = 'ahmed'; 

select * from EmployeeDemographics 
where EmployeeID <> 1;

select * from EmployeeDemographics 
where Age > 20;


select * from EmployeeDemographics 
where Age >= 20 and (Gender ='male' or Gender = 'm') ;


select * from EmployeeDemographics 
where Age <= 12;

select * from EmployeeDemographics 
where EmployeeID between 1 and 3;



select * from EmployeeDemographics 
where Gender is null;

select * from EmployeeDemographics 
where Gender is not null;

select * from EmployeeDemographics 
where EmployeeID in (1,2,1001);


select * from EmployeeDemographics 
where FirstName like 'a__' or FirstName like '%a' or FirstName like 'a%' ;

select * from  EmployeeSalary 
select Gender, COUNT(Gender) from EmployeeDemographics
group by Gender 
having Gender is not null;


select * from EmployeeDemographics 
order by FirstName asc ;