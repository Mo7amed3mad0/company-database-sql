--1.	Display all the employees Data.
--2.	Display the employee First name, last name, Salary and Department number.
--3.	Display all the projects names, locations and the department which is responsible about it.
--4.	If you know that the company policy is to pay an annual commission for each employee with specific percent equals 10% of his/her annual salary .Display each employee full name and his annual commission in an ANNUAL COMM column (alias).
--5.	Display the employees Id, name who earns more than 1000 LE monthly.
--6.	Display the employees Id, name who earns more than 10000 LE annually.
--7.	Display the names and salaries of the female employees 
--8.	Display each department id, name which managed by a manager with id equals 968574.
--9.	Dispaly the ids, names and locations of  the pojects which controled with department 10.


--1.Display all the employees Data.
use Company_SD
select * 
from Employee

--2.Display the employee First name, last name, Salary and Department number.
select Fname , Lname , Salary ,Dnum
from Employee , Departments

--3.Display all the projects names, locations and the department which is responsible about it.
SELECT p.Pname, p.Plocation, d.Dname
FROM Project p
JOIN Departments d ON p.dnum = d.dnum 

--4.If you know that the company policy is to pay an annual commission for each employee with specific percent equals 10% of his/her annual salary .Display each employee full name and his annual commission in an ANNUAL COMM column (alias).
select Fname+' '+Lname as full_name , Salary  * 12 * 0.1 as ANNUAL_COMM
from Employee

--5.Display the employees Id, name who earns more than 1000 LE monthly.
select SSN ,Fname+' '+Lname as full_name
from Employee
where Salary>1000

--6.Display the employees Id, name who earns more than 10000 LE annually.
select SSN ,Fname+' '+Lname as full_name
from Employee
where (Salary * 12 )>10000
 
--7.Display the names and salaries of the female employees 
select Fname , Salary
from Employee
where Sex='f'

--8.Display each department id, name which managed by a manager with id equals 968574.
select MGRSSN , Dname
from Departments
where MGRSSN = 968574

--9.Dispaly the ids, names and locations of  the pojects which controled with department 10.
select Pname ,Plocation ,Pnumber
from Project p 
join Departments D ON D.dnum =p.dnum
where D.Dnum=10










