# Functions in SQL
## String Function
- LOWER
- UPPER
-- LEN - length
-- LTRIM - Remove beginning spaces
-- RTRIM
-- REVERSE
-- REPLACE
-- Soundex
    -Comparing the strings with the help of the sound

```sql
select concat("Hello, "," ","ABC") as Msg;
```
```sql
select upper('Sai') as Name;
```
```sql
select lower("SAI") as Name;
```
```sql
select LTRIM("     Sai") as Name;
--Removes the spaces in the beginning
```
```sql
select LEFT("Sai",2) as Name;
--Displays the given number of character from the left
```
## SQL Query
```sql
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
 ```
 Task 1:
 Sort the employees by the length of their first name in descending
 ```sql 
Select * from employeedata

Select * from EmployeeData
order by len(firstname) desc
```
Task 2:
Get the Initials JD, JS, EJ, CB
```sql
select concat(left(firstname,1),left(lastname,1)) as Initials from EmployeeData
```
Task 3:
Extract and display the first three letters of each employee last name and display it in uppercase
```sql
select Upper(substring(lastname,1,3)) as Initials from EmployeeData
```
## Date Function
- DATE
- MONTH
- YEAR
- GETDATE (current date)
- DATEDIFF(datepart, startDate, endDate)
- DATEADD(Datepart, number, date)

Task 4
Write a query to calculate the tenure of each employee in complete years as of today.
```sql
SELECT EmployeeID,DATEDIFF(Year,StartDate,GetDate()) AS Tenure FROM EmployeeData
```

## Math Function
- Round
- Ceil (nearest highest number)
- floor (nearest lowest number)

Task 5 - Calculate Annual Salary Increase
Assume a yearly salary increase of 3% for each employee. 
Write a query to calculate their new salary rounded to the nearest whole number.
```sql
SELECT EmployeeId,ROUND((Salary*0.03+Salary),0) AS New_Salary FROM EmployeeData
```

## Format Date
```sql
DECLARE @d DATE = '11/22/2020';  
SELECT FORMAT( @d, 'D', 'en-US' ) 'US English'  
      ,FORMAT( @d, 'D', 'en-gb' ) 'British English'  
      ,FORMAT( @d, 'D', 'de-de' ) 'German'  
      ,FORMAT( @d, 'D', 'zh-cn' ) 'Chinese Simplified (PRC)';
```
```sql
 -- Format Date 25 April 2012
 SELECT FORMAT(ord_date,'D', 'en-gb' ) FROM orders
```
```sql
--Custom format
--Format to print nly apr, oct
  SELECT FORMAT(ord_date,'dd MMM yyyy' ) FROM orders -- custome F
```
## Decalre a varaible

>DECLARE @d DATE = '11/22/2020'; 

- @d- variable name
- DATA- Datatype
- =11/22/2020' - Value

```sql
--Top 3 Purc_Amt
DECLARE @n INT = 3
SELECT *, FORMAT(ord_date, 'dd MMM yyyy')
FROM orders 
Order by purch_amt desc
OFFSET 0 ROWS  
FETCH NEXT @n ROWS ONLY;
```

