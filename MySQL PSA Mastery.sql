SELECT * FROM testingcampus.employee;

use testingcampus;

SELECT * FROM employee;

INSERT INTO `testingcampus`.`employee` (`EID`, `Ename`, `City`, `Salary`) VALUES (113, 'Smith', 'Los Angelas', 55000)

(100, 'Amit', 'Delhi', 55000),
(101, 'Priya', 'Mumbai', 60000),
(102, 'Rahul', 'Bangalore', 58000),
(103, 'Anjali', 'Hyderabad', 52000),
(104, 'Suresh', 'Chennai', 54000),
(105, 'Neha', 'Kolkata', 51000),
(106, 'Vikram', 'Pune', 57000),
(107, 'Kavita', 'Ahmedabad', 53000),
(108, 'Rajesh', 'Surat', 56000),
(109, 'Pooja', 'Jaipur', 59000);


show tables;

1.Read the employee name whose salary is 10000?
SELECT Ename FROM employee where Salary=10000;

2.Read the employee name whose salary is greater than or equal to 10000?
SELECT Ename FROM employee where Salary>=10000;

3.Read the employee name whose salary is 10000 and 20000 ?
SELECT Ename FROM employee where Salary in(10000,20000);

4.Read all the EID where name of the employees is suresh and vikram? 
SELECT EID FROM employee where Ename IN ("Suresh","Vikram");

5.Filter the records using HAVING clause only and give the employee id whose name is Vikram?
SELECT EID FROM employee HAVING Ename = "Vikram";

6.Sort the EID in descending order;
SELECT EID FROM employee ORDER BY EID DESC;

7.Sort the Employee names in descending order?
SELECT Ename from employee ORDER BY Ename DESC;

8.Sort the employee id in ascending order;

9.provide the maximum salary from the table;
SELECT MAX(Salary) FROM employee;

10.provide the minimum salary from the table;
SELECT MIN(Salary) FROM employee;

11.provide the average salary from the table;
SELECT AVG(Salary) FROM employee;

12.Provide the SUM of all the salaries in the table?
SELECT SUM(Salary) FROM employee;

13.provide me the exact no of employees working in your company;
SELECT COUNT(EID) FROM employee;

14.Group the employees based on city and then count citywise and print the count in ascending order?
SELECT City,COUNT(EID) FROM employee GROUP BY City ORDER BY Count(EID) ;

15.count the no of cities and sort the count in asc order group by city?
SELECT City,COUNT(City) FROM employee GROUP BY City Order By COUNT(City) ASC;
SELECT City,COUNT(City) FROM employee GROUP BY City Order By COUNT(City) DESC;

16. Group the candidates by their salary;
SELECT Salary,count(Salary) FROM employee GROUP BY Salary;

EX.
Select city from employee;
Select count(city) from employee;
Select city,count(city) from employee group by city;
SELECT count(EID) from employee ;

17.Group the city after counting where the city name is bangalore;
SELECT City,count(City) FROM employee WHERE city="Bangalore";
SELECT City,count(city) from employee Group by city HAVING city="Bangalore";

18. convert names into uppercase and lowercase
SELECT ucase(Ename) From employee;
SELECT lcase(Ename) From employee;

LECTURE 2

19.display first two records of the table?
SELECT * FROM employee ORDER BY EID ASC LIMIT 2;
SELECT * FROM employee ORDER BY EID ASC LIMIT 1;

20.display last two records of the table?
SELECT * FROM employee ORDER BY EID DESC LIMIT 2;
SELECT * FROM employee ORDER BY EID DESC LIMIT 1;

21.display only first three columns of city columns ex(hyd,ban,che) etc?
SELECT mid(city,1,3) from employee; 

22.print the current system time using sql?
SELECT NOW();
//ALLIAS
23.as timestamp
SELECT NOW() as TIMESTAMP;

24.In the output change the column name Ename to Name and print the output? //ALLIAS
SELECT Ename AS Name FROM employee;
//WILDCARDS
25.Give the records of employee names whos name ends with m?
SELECT Ename FROM employee Where Ename LIKE "%m";

26.Give the records of employee names whos name starts with a?
SELECT Ename FROM employee Where Ename LIKE "a%";

27.Give me the records of employee whose name have "m" in it?
SELECT Ename FROM employee where Ename LIKE "%e%";

28.Give the name of employee which consist of 3 letters
SELECT Ename FROM employee where Ename like "___";

29.Give the name of employee which consist of 4 letters and  ends with letter t;
SELECT Ename from employee where ename like "___t";

30.Delete a record from employee table where the eid=101;
DELETE FROM Employee WHERE Eid=101;

31.Delete records from employee table where the eid are  101and 102 ;
delete from employee where Eid in (108,109);

32.Delete a record from employee table where the employee name is smith;
DELETE FROM employee WHERE Ename="Smith";
SELECT * FROM employee;

33.Drop table employee;

34.Print only the unique city name from the table ?
SELECT DISTINCT city FROM Employee;

35.give disctint salary from employee table?
SELECT DISTINCT salary From employee;

36.Concat the content of two columns and print the output in a single column?
SELECT CONCAT(Ename,Salary) FROM Employee;

37.Concat Ename and Salary with a underscore and then concat the content of these columns?
SELECT CONCAT(Ename,"_",Salary) FROM employee;

38.Remove all the white spaces from the left side of ename and then print ename
SELECT Ename From employee;
SELECT LTRIM(Ename) FROM EMployee;

39.Remove all the white spaces from the right side of ename and then print ename
SELECT Ename From employee;
SELECT RTRIM(Ename) FROM EMployee;

39.Remove all the white spaces from the right and left side of ename and then print ename
SELECT Ename From employee;
SELECT TRIM(Ename) FROM EMployee;

40.REmove all the white spaces from Ename and salary from both left and right side and concat them separated by a "_";
SELECT CONCAT(TRIM(Ename),"_",TRIM(Salary)) FROM Employee;

41.Concat Ename and Salary and print the output in DESC Order;


//UPDATE
42.Update the record having Abdul as ename to ABC
UPDATE employee SET Ename = "Dom" where Ename = "Abdul";
 SELECT * FROM Employee;


43.Update the employee name to Smith where  the employee id is 110;
UPDATE employee SET Ename="Smith" WHERE Eid=110;

44.Replace the city name bangalore with bengaluru in the table?
UPDATE Employee SET city="Bengaluru" where city="Bangalore";
SELECT * FROM Employee;

45.Delete a record from the table wherever you find employee name smith;
DELETE FROM employee where Ename = "smith";

46.Delete the record where you find salary 12000?
DELETE FROM employee where salary="12000";

47.Update everyones salary by adding 2000?
UPDATE employee SET salary = salary + 2000;
SELECT * FROM Employee;

48.Update everyones salary by decreasing 2000?
UPDATE employee SET salary = salary - 2000;
SELECT * FROM Employee;

//ALTER

49.Add a column to the existing table;
ALTER table employee ADD email varchar(50);
SELECT * FROM Employee;

50.Add a column to the existing table;
ALTER table employee ADD Elocation varchar(50) FIRST;
SELECT * FROM Employee;

51.Add a column email to the existing table after Ename ;
ALTER table employee ADD Email varchar(50) AFTER Ename;
SELECT * FROM Employee;

52.Delete a column Email From the table;
ALTER TABLE employee DROP COLUMN Email;
SELECT * FROM Employee;

53. Find the length of each and every string present in Ename Column;4
SELECT LENGTH(Ename) From Employee;
54.count the no of letters present in the given string "I will kill you!!!"?
SELECT LENGTH("I will kill you!!!");

55.Give the 2nd highest salary in the table?
first print the highest salary of the employee

Satic
SELECT MAX(Salary) FROM Employee ;

SELECT MAX(Salary) FROM Employee where salary<62000;
Dynamic Aproach
SELECT MAX(Salary) FROM Employee
							WHERE SALARY <
											(SELECT MAX(Salary) FROM Employee WHERE SALARY);

56.Give the 3rd highest salary in the table?
SELECT MAX(Salary) FROM Employee WHERE SALARY <
	(SELECT MAX(Salary) FROM Employee WHERE SALARY <
		(SELECT MAX(Salary) FROM Employee WHERE SALARY <
			(SELECT MAX(Salary) FROM Employee WHERE SALARY)));
    
    
   
   
JOINS

57.SELECT MATCHING RECORDS FROM FROM TWO TABLES?


CREATE TABLE employees (
    EmpId INT PRIMARY KEY,
    ename VARCHAR(100),
    dept VARCHAR(100),
    location VARCHAR(100)
);
INSERT INTO employees (EmpId, ename, dept, location) VALUES (100, 'John Doe', 'HR', 'New York');
INSERT INTO employees (EmpId, ename, dept, location) VALUES (101, 'Jane Smith', 'Finance', 'Chicago');
INSERT INTO employees (EmpId, ename, dept, location) VALUES (102, 'Michael Brown', 'IT', 'San Francisco');
INSERT INTO employees (EmpId, ename, dept, location) VALUES (103, 'Emily Davis', 'Marketing', 'Los Angeles');
INSERT INTO employees (EmpId, ename, dept, location) VALUES (104, 'William Johnson', 'Sales', 'Miami');

CREATE TABLE Attendance (
    EmpID INT,
    Attd_date DATE,
    class VARCHAR(50)
);

INSERT INTO Attendance (EmpID, Attd_date, class) VALUES (100, '2016-02-23', 'I');
INSERT INTO Attendance (EmpID, Attd_date, class) VALUES (100, '2016-02-23', 'II');
INSERT INTO Attendance (EmpID, Attd_date, class) VALUES (102, '2016-02-23', 'I');
INSERT INTO Attendance (EmpID) VALUES (102);
INSERT INTO Attendance (EmpID, Attd_date, class) VALUES (104, '2016-02-23', 'I');

57.SELECT MATCHING RECORDS FROM FROM TWO TABLES based on EmpID?
SELECT employees.Ename,employees.dept,Attendance.Attd_date FROM employees
		INNER JOIN 
				Attendance ON employees.EmpID=Attendance.EmpId

58.SELECT MATCHING RECORDS FROM FROM TWO TABLES class , location and employee?
SELECT employees.EmpId,employees.location,Attendance.class FROM employees
		INNER JOIN 
				Attendance ON employees.EmpID=Attendance.EmpId;


59.substract the two tables and give all the records from employee table?
SELECT * FROM employees WHERE EmpId 
	NOT IN 
		(SELECT EmpId FROM attendance);

60.give eid,ename,dept,location,attd_date,class only if the records are common between two tables?

SELECT employees.EmpId,employees.ename,employees.dept,employees.location,attendance.Attd_date,attendance.class
	FROM employees 
		INNER JOIN 
        attendance ON employees.EmpId = attendance.EmpId;
        


LEFT JOIN
61.Give the ename ,dept, atd_date, such that all the records are displayed from the left table and only matching records are displayed from the right table?
SELECT employees.ename ,employees.dept,attendance.attd_date from employees 
	left join attendance ON 
			employees.EmpId = Attendance.EmpId;
            
62.Give the empid ,dept, class such that all the records are displayed from the left table and only matching records are displayed from the right table?
SELECT employees.EmpId ,employees.dept,attendance.class from employees 
	left join attendance ON 
			employees.EmpId = Attendance.EmpId;           
            
63.Give the name of the employee whose birth year is in the year 2000?
	
    SELECT name from employee where date year(dob)==2000;
    
    select Month(now());
    select Day(now());
    select minute(now());
    select second(now());
    

INTERSECT

SELECT EmpId, ename, dept ,location FROM employees
INTERSECT
SELECT EmpId, attd_date, class FROM attendance;

SELECT EmpId, ename, dept, location
FROM employees
INTERSECT
SELECT EmpId, attd_date, class
FROM attendance;


SET SQL_SAFE_UPDATES = 0;



