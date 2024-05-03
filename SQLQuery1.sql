CREATE TABLE salesman (
    salesman_id INT PRIMARY KEY,
    name VARCHAR(255),
    city VARCHAR(255),
    commission DECIMAL(4, 2)
);



INSERT INTO salesman (salesman_id, name, city, commission) VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5003, 'Lauson Hen', NULL, 0.12),
(5007, 'Paul Adam', 'Rome', 0.13);

select * from salesman

-- Task 1
-- Find the average commision of a saleman from Paris
SELECT AVG(commission) AS average_commision FROM salesman 
WHERE city='Paris'


-- Task 2
-- Find out if there are city with only one salesman and list them
SELECT city FROM salesman
GROUP BY city
HAVING COUNT(city)=1;

-- Task 3
-- --Determine the maximum commission in each city, and list the salesman who earns this commision

SELECT city, MAX(commission) AS max_com FROM salesman 
WHERE city IS NOT NULL
GROUP BY city;


select name,city,commission from salesman s
where commission =(select max(i.commission) from salesman i
					WHERE s.city=i.city
					group by city);


select s.city,s.name,s.commission from salesman s
inner join (select city,max(i.commission) as comm from salesman i
			where city is not null		
			group by city) t on s.commission=t.comm AND s.city=t.city

			Select * from salesman s
			inner join salesman t on s.salesman_id=t.salesman_id

CREATE TABLE orders (
    ord_no INT PRIMARY KEY,
    purch_amt DECIMAL(10, 2),
    ord_date DATE,
    customer_id INT,
    salesman_id INT
);
 
 
INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003, 5007),
(70013, 3045.6, '2012-04-25', 3002, 5001);

-- Task 4
-- Write a query to display all the orders from the orders table issued by the by the salesman 'paul adam'
SELECT * FROM orders
where salesman_id=(SELECT salesman_id From salesman where name='Paul Adam');

-- Task 5
---- Write a query to display all the orders which values are greater than the average order value for 10th October 2012
SELECT * from orders 
where purch_amt>(select avg(purch_amt) from orders where ord_date='2012-10-10');

-- Task 6
-- Write a query to find all orders with order amounts which are above-average amounts for their customers.

select * from orders o
where purch_amt>(select avg(purch_amt) from orders i
where o.customer_id=i.customer_id);


SELECT * From salesman;
select * from orders;

-- Task 7

-- write a query to find all orders attributed to a salesman in Paris

select * from orders 
where salesman_id in (select salesman_id from salesman 
				where city IN ('Paris'));

select * from orders o inner join (select salesman_id from salesman 
				where city IN ('Paris')) s on o.salesman_id=s.salesman_id;
			
-- Task 8 
-- Write a query to find the name and id of all salesmen who had more than one customer
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    cust_name VARCHAR(255),
    city VARCHAR(255),
    grade INT NULL,
    salesman_id INT
);
INSERT INTO customer (customer_id, cust_name, city, grade, salesman_id) VALUES
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3001, 'Brad Guzan', 'London', NULL, 5005),
(3004, 'Fabian Johns', 'Paris', 300, 5006),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3009, 'Geoff Camero', 'Berlin', 100, 5003),
(3008, 'Julian Green', 'London', 300, 5002),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007);

select salesman_id, name from salesman 
where salesman_id in(
select salesman_id from customer group by salesman_id having count(customer_id) >1);

-- All & Any
-- Want all the orders which are greater than the Poojitha's orders
 
SELECT * 
FROM orders 
where purch_amt > All(
			SELECT purch_amt
			FROM orders
			where customer_id = 3005)
 
SELECT max(purch_amt)
FROM orders
where customer_id = 3005


select * from orders 
where purch_amt > (SELECT max(purch_amt)
FROM orders
where customer_id = 3005)

-- Task 9
-- Write a query to display only those customers whose grade are, in fact, higher than every customer in New York.

select * from customer 
where grade> all(select grade from customer
				where city='New York')

-- Task 10
-- Write a query to find all orders with an amount smaller than any amount for a customer in London.

select * from customer
select * from orders
select * from salesman

select customer_id from customer where city='London'

select * from orders
where customer_id in (select customer_id from customer where city='London')

select purch_amt from orders
where customer_id in (select customer_id from customer where city='London')

select * from orders 
where purch_amt < any(select purch_amt from orders
where customer_id in (select customer_id from customer where city='London'))



--ER Diagram

CREATE TABLE [Professor] (
  [professor_id] Varchar(255),
  [professor_name] Varchar(255),
  [department] Varchar(255),
  PRIMARY KEY ([professor_id])
);
 
 
CREATE TABLE [Student] (
  [student_id] Varchar(255),
  [student_name] Varchar(255),
  PRIMARY KEY ([student_id])
);
 
CREATE TABLE [Course] (
  [course_id] Varchar(255),
  [course_name] Varchar(255),
  [professor_id] Varchar(255),
  PRIMARY KEY ([course_id]),
  Foreign Key ([professor_id]) References Professor([professor_id])
);
 
 
CREATE TABLE [Enrollment] (
  [enroll_id] Varchar(255) ,
  [course_id] Varchar(255),
  [student_id] Varchar(255) ,
  PRIMARY KEY ([enroll_id]),
  Foreign Key ([course_id]) References Course([course_id]),
  Foreign Key ([student_id]) References Student([student_id])
);
 
 
INSERT INTO Professor (professor_id, professor_name, department)
VALUES ('P001', 'Dr. Brown', 'Mathematics'),
       ('P002', 'Dr. Smith', 'Physics');
 
 
INSERT INTO Student (student_id, student_name)
VALUES ('S001', 'Alice'),
       ('S002', 'Bob'),
       ('S003', 'Charlie');
 
INSERT INTO Course (course_id, course_name, professor_id)
VALUES ('C001', 'Math 101', 'P001'),
       ('C002', 'Physics 101', 'P002');
 
 
INSERT INTO Enrollment (enroll_id, course_id, student_id)
VALUES ('E001', 'C001', 'S001'),
       ('E002', 'C002', 'S002'),
       ('E003', 'C002', 'S001'),
       ('E004', 'C001', 'S003');
 
Select * from Enrollment;

Select * from Professor;
 
Select * from Course;


-------------------------------------------------------------------------------

CREATE TABLE EmployeeData (

    EmployeeID INT PRIMARY KEY,

    FirstName VARCHAR(50),

    LastName VARCHAR(50),

    Salary INT,

    StartDate DATE

);


INSERT INTO EmployeeData (EmployeeID, FirstName, LastName, Salary, StartDate) VALUES

(1, 'John', 'Doe', 70000, '2020-05-01'),

(2, 'Jane', 'Smith', 85000, '2018-08-15'),

(3, 'Emily', 'Jones', 94000, '2019-12-30'),

(4, 'Chris', 'Brown', 62000, '2021-03-22');
 
 select * from EmployeeData
 -- Task 1
 -- sort the employees by the length of their first name in descending
  
Select * from employeedata

Select * from EmployeeData
order by len(firstname) desc

-- Task 2
-- Get the Initials JD, JS, EJ, CB

select concat(left(firstname,1),left(lastname,1)) as Initials from EmployeeData

-- Task 3
-- Extract and display the first three letters of each employee last name and display it in uppercase

select Upper(substring(lastname,1,3)) as Initials from EmployeeData

-- Task 4

-- Write a query to calculate the tenure of each employee in complete years as of today.

SELECT EmployeeID,DATEDIFF(Year,StartDate,GetDate()) AS Tenure FROM EmployeeData

-- Task 5 - Calculate Annual Salary Increase
-- Assume a yearly salary increase of 3% for each employee. 
-- Write a query to calculate their new salary rounded to the nearest whole number.

SELECT EmployeeId,ROUND((Salary*0.03+Salary),0) AS New_Salary FROM EmployeeData

-- TASK 1
-- Top 3 Purc_Amt
-- Clue: Read Docs
SELECT * FROM orders

 SELECT * FROM orders
 ORDER BY purch_amt DESC
 OFFSET 0 ROWS
 FETCH NEXT 3 ROWS ONLY;

 -- TASK 2
 -- Format Date 25 april 2012
 SELECT FORMAT(ord_date,'D', 'en-gb' ) FROM orders

  SELECT FORMAT(ord_date,'dd MMM yyyy' ) FROM orders -- custome format to print nly apr, oct
 
DECLARE @n INT = 3
SELECT *, FORMAT(ord_date, 'dd MMM yyyy')
FROM orders 
Order by purch_amt desc
OFFSET 0 ROWS  
FETCH NEXT @n ROWS ONLY;

CREATE TABLE EmployeeSales (
    EmployeeID INT,
    Region VARCHAR(50),
    Category VARCHAR(50),
    Quarter VARCHAR(10),
    SalesAmount DECIMAL(10,2)
);
 
INSERT INTO EmployeeSales (EmployeeID, Region, Category, Quarter, SalesAmount)
VALUES
    (101, 'North', 'Electronics', 'Q1', 1200.00),
    (101, 'North', 'Electronics', 'Q2', 1500.00),
    (102, 'North', 'Clothing', 'Q1', 800.00),
    (102, 'North', 'Clothing', 'Q2', 950.00),
    (103, 'South', 'Electronics', 'Q1', 1000.00),
    (103, 'South', 'Clothing', 'Q1', 1200.00),
    (104, 'East', 'Electronics', 'Q2', 1150.00),
    (104, 'East', 'Clothing', 'Q2', 500.00),
    (105, 'West', 'Electronics', 'Q1', 1900.00),
    (105, 'West', 'Clothing', 'Q1', 1100.00),
    (105, 'West', 'Electronics', 'Q2', 2100.00),
    (105, 'West', 'Clothing', 'Q2', 1300.00);

SELECT * FROM EmployeeSales

SELECT * from EmployeeSales
order by Region,SalesAmount DESC

SELECT region,category,sum(SalesAmount) from EmployeeSales
group by Region,Category
order by region,category

SELECT region,category,quarter,sum(SalesAmount) from EmployeeSales
group by Region,Quarter

SELECT region,category,quarter,sum(SalesAmount) from EmployeeSales
group by Region

SELECT region,category,quarter,sum(SalesAmount) from EmployeeSales
group by GROUPING SETS (
			(Region,Category),
			(Region,Quarter),
		    Region,
			Quarter)
ORDER BY GROUPING(Region), GROUPING(Category), GROUPING(Region)