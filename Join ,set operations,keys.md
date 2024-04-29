## Natual join
- no condition
- column name should be same
- no ms sql
```sql
SELECT * employee
NATURAL JOIN Department;
```
## Equi JOIN
- mention condition
- condition must always be '='
- equal values(PK=FK)
```sql
select name,dept from employees
EQUI JOIN Department d ON employeeId=d.employeeid;
```
## Inner join
- condition
- condition can have any other sign
```sql
select name,dept from employees
INNER JOIN Department ON salary>minsalary;
```
## Cross Join
- combination of two rows
3 row table1 * 3 row table 2 = 9 rows total
## Shortcuts
```sql
CREATE DATABASE dbname
USE dbname
EXEC sp_renamedb 'oldDB','newDB'
DROP DATABASE dbname
```
## LIMIt and OFFSET

```sql
OFFSET 5 rows
```
```sql
OFFSET 0 rows
FETCH NEXT 10 rows ONLY;
```
# Set Theory - no repetition
- Union - order does not matter
- Intersect - order does not matter
- Except (set difference)- order matters
# Keys
## Primary Key
- unique
- not null
## Candidate key
- potential to be primary key
- unique
- not null
- ck= pk+ ak
## Alternate key
- candidate keys which are not primary key
## Super Key
- Combination of keys that uniquely identifies a record
- combination of primary , candidate and alternate keys
## Composite key
- when we don't have pk we can combine column to have composite key
- composite keys are not unique when considered independent
## Foreign Key
- key in one table acts as a primary key in another table

# ACID PROPERTIES
## Atomicity
- success or failure
- safety
- Bank transfer( both sides transaction fails or both side transaction fails)

## Consistency
- validation /  availability
- if a bank server is down, one cannot withdraw money
- in case of validation, voting allowed for people above 18 years of age

## Isolation
- multiple access should be consistent
- It should be in isolation and work one after the other
- there are card 1 and card2 if both the cards are being used at the same time, then it works after one card transaction completes

## Durability
- Data should be safe even after many years
- Data should be stored in database even if system fails

No SQL Follows BASE 
my sql follows ACID



# Grouping and order by
```sql
SELECT region,category,quarter,sum(SalesAmount) from EmployeeSales
group by GROUPING SETS (
			(Region,Category),
			(Region,Quarter),
		    Region,
			Quarter)
ORDER BY GROUPING(Region), GROUPING(Category), GROUPING(Region)
```
Result:
```sql
North	NULL	      Q1	2000.00
South	NULL	      Q1	2200.00
West	NULL	      Q1	3000.00
NULL	NULL	      Q1	7200.00
East	NULL	      Q2	1650.00
North	NULL	      Q2	2450.00
West	NULL	      Q2	3400.00
NULL	NULL	      Q2	7500.00
East	Clothing	NULL	500.00
East	Electronics	NULL	1150.00
East	NULL	    NULL	1650.00
North	Clothing	NULL	1750.00
North	Electronics	NULL	2700.00
North	NULL	    NULL	4450.00
South	Clothing	NULL	1200.00
South	Electronics	NULL	1000.00
South	NULL	    NULL	2200.00
West	Clothing	NULL	2400.00
West	Electronics	NULL	4000.00
West	NULL	    NULL	6400.00
```
## Exists and Not Exists

```sql
-- print the employee from engineering department who is doing project
Select * from employees o
where department='Engineering' AND EXISTS(select * from projects i
							where o.employee_id=i.employee_id)
```
```sql
-- print the employee from engineering department who is not doing project
Select * from employees o
where department='Engineering' AND NOT EXISTS(select * from projects i
							where o.employee_id=i.employee_id)
```