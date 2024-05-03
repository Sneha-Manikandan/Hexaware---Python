CREATE TABLE userTable (
			UserID INT PRIMARY KEY, 
			Name VARCHAR(255), 
			Email VARCHAR(255) UNIQUE, 
			Password VARCHAR(255), 
			ContactNumber VARCHAR(20), 
			Address TEXT 
); 
INSERT INTO userTable (UserID, Name, Email, Password, ContactNumber, Address)
VALUES
    (1, 'John Doe', 'john@example.com', 'password1', '1234567890', '123 Main St, City'),
    (2, 'Jane Smith', 'jane@example.com', 'password2', '0987654321', '456 Elm St, Town'),
    (3, 'Alice Johnson', 'alice@example.com', 'password3', '5551234567', '789 Oak St, Village'),
    (4, 'Bob Brown', 'bob@example.com', 'password4', '9876543210', '321 Pine St, Hamlet'),
    (5, 'Emily Davis', 'emily@example.com', 'password5', '7778889999', '654 Birch St, Suburb'),
    (6, 'Michael Wilson', 'michael@example.com', 'password6', '1112223333', '987 Cedar St, Countryside'),
    (7, 'Sarah Taylor', 'sarah@example.com', 'password7', '4445556666', '753 Maple St, Rural'),
    (8, 'David Martinez', 'david@example.com', 'password8', '6667778888', '159 Walnut St, Coastal'),
    (9, 'Olivia Garcia', 'olivia@example.com', 'password9', '2223334444', '246 Pineapple St, Island'),
    (10, 'James Rodriguez', 'james@example.com', 'password10', '8889990000', '369 Peach St, Peninsula');

CREATE TABLE Courier (
CourierID INT PRIMARY KEY, 
SenderName VARCHAR(255), 
SenderAddress TEXT, 
ReceiverName VARCHAR(255), 
ReceiverAddress TEXT, 
Weight DECIMAL(5, 2), 
Status VARCHAR(50), 
TrackingNumber VARCHAR(20) UNIQUE, 
DeliveryDate DATE
);
INSERT INTO Courier (CourierID, SenderName, SenderAddress, ReceiverName, ReceiverAddress, Weight, Status, TrackingNumber, DeliveryDate)
VALUES
    (1, 'John Doe', '123 Main St, City', 'Alice Johnson', '789 Oak St, Village', 2.5, 'In Transit', '1234567890', '2024-04-25'),
    (2, 'Jane Smith', '456 Elm St, Town', 'Bob Brown', '321 Pine St, Hamlet', 1.8, 'Delivered', '2345678901', '2024-04-24'),
    (3, 'Alice Johnson', '789 Oak St, Village', 'Emily Davis', '654 Birch St, Suburb', 3.1, 'Pending', '3456789012', '2024-04-23'),
    (4, 'Bob Brown', '321 Pine St, Hamlet', 'Michael Wilson', '987 Cedar St, Countryside', 1.5, 'In Transit', '4567890123', '2024-04-22'),
    (5, 'Emily Davis', '654 Birch St, Suburb', 'Sarah Taylor', '753 Maple St, Rural', 2.2, 'Delivered', '5678901234', '2024-04-23'),
    (6, 'Michael Wilson', '987 Cedar St, Countryside', 'David Martinez', '159 Walnut St, Coastal', 4.0, 'Pending', '6789012345', '2024-04-26'),
    (7, 'Sarah Taylor', '753 Maple St, Rural', 'Olivia Garcia', '246 Pineapple St, Island', 1.9, 'In Transit', '7890123456', '2024-04-20'),
    (8, 'David Martinez', '159 Walnut St, Coastal', 'James Rodriguez', '369 Peach St, Peninsula', 2.8, 'Pending', '8901234567', '2024-04-21'),
    (9, 'Olivia Garcia', '246 Pineapple St, Island', 'John Doe', '123 Main St, City', 3.3, 'In Transit', '9012345678', '2024-04-25'),
    (10, 'James Rodriguez', '369 Peach St, Peninsula', 'Jane Smith', '456 Elm St, Town', 2.0, 'Delivered', '0123456789', '2024-04-22');

CREATE TABLE CourierServices (
ServiceID INT PRIMARY KEY, 
ServiceName VARCHAR(100), 
Cost DECIMAL(8, 2)
);
INSERT INTO CourierServices (ServiceID, ServiceName, Cost)
VALUES
    (1, 'Standard', 10.00),
    (2, 'Express', 20.00),
    (3, 'Overnight', 30.00),
    (4, 'International', 50.00),
    (5, 'Same Day', 40.00),
    (6, 'Next Day', 25.00),
    (7, 'Two-Day', 15.00),
    (8, 'Ground', 12.00),
    (9, 'Priority', 35.00),
    (10, 'Economy', 8.00);

CREATE TABLE Employee (
EmployeeID INT PRIMARY KEY, 
Name VARCHAR(255), 
Email VARCHAR(255) UNIQUE, 
ContactNumber VARCHAR(20), 
Role VARCHAR(50), 
Salary DECIMAL(10, 2)
);
INSERT INTO Employee (EmployeeID, Name, Email, ContactNumber, Role, Salary)
VALUES
    (1, 'John Manager', 'john_manager@example.com', '1234567890', 'Manager', 50000.00),
    (2, 'Jane Clerk', 'jane_clerk@example.com', '0987654321', 'Clerk', 30000.00),
    (3, 'Alice Driver', 'alice_driver@example.com', '5551234567', 'Driver', 40000.00),
    (4, 'Bob Supervisor', 'bob_supervisor@example.com', '9876543210', 'Supervisor', 45000.00),
    (5, 'Emily Receptionist', 'emily_receptionist@example.com', '7778889999', 'Receptionist', 28000.00),
    (6, 'Michael Courier', 'michael_courier@example.com', '1112223333', 'Courier', 35000.00),
    (7, 'Sarah Analyst', 'sarah_analyst@example.com', '4445556666', 'Analyst', 55000.00),
    (8, 'David IT', 'david_it@example.com', '6667778888', 'IT', 60000.00),
    (9, 'Olivia HR', 'olivia_hr@example.com', '2223334444', 'HR', 52000.00),
    (10, 'James Sales', 'james_sales@example.com', '8889990000', 'Sales', 48000.00);

CREATE TABLE Location(
LocationID INT PRIMARY KEY, 
LocationName VARCHAR(100), 
Address TEXT
); 
INSERT INTO Location (LocationID, LocationName, Address)
VALUES
    (1, 'Main Office', '123 Office St, City'),
    (2, 'Branch Office', '456 Branch St, Town'),
    (3, 'Warehouse', '789 Warehouse St, Suburb'),
    (4, 'Distribution Center', '321 Distribution St, Rural'),
    (5, 'Headquarters', '654 HQ St, Metropolitan'),
    (6, 'Storefront', '987 Store St, Downtown'),
    (7, 'Factory', '753 Factory St, Industrial'),
    (8, 'Outlet', '159 Outlet St, Commercial'),
    (9, 'Depot', '246 Depot St, Port'),
    (10, 'Station', '369 Station St, Terminal');

CREATE TABLE Payment(
PaymentID INT PRIMARY KEY, 
CourierID INT, 
LocationId INT, 
Amount DECIMAL(10, 2), 
PaymentDate DATE, 
FOREIGN KEY (CourierID) REFERENCES Courier(CourierID), 
FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

INSERT INTO Payment (PaymentID, CourierID, LocationId, Amount, PaymentDate)
VALUES
    (1, 1, 1, 55.00, '2024-04-25'),
    (2, 2, 2, 50.00, '2024-04-24'),
    (3, 3, 3, 70.00, '2024-04-23'),
    (4, 4, 4, 35.00,  '2024-04-22'),
    (5, 5, 5, 28.00, '2024-04-23'),
    (6, 6, 6, 82.00, '2024-04-26'),
    (7, 7, 7, 23.00, '2024-04-20'),
    (8, 8, 8, 30.00, '2024-04-21'),
    (9, 9, 9, 76.00, '2024-04-25'),
    (10, 10, 10, 18.00, '2024-04-22');

CREATE TABLE CourierServiceMapping (
         CourierID INT,
         ServiceID INT,
         FOREIGN KEY (CourierID) REFERENCES Courier(CourierID),
         FOREIGN KEY (ServiceID) REFERENCES CourierServices(ServiceID)
     );
INSERT INTO CourierServiceMapping(CourierID,ServiceID)
VALUES(1,10),
	  (2,9),
	  (3,8),
	  (4,7),
	  (5,9),
	  (6,4),
	  (7,10),
	  (8,2),
	  (9,1),
	  (10,9);

CREATE TABLE EmployeeCourier (
         EmployeeID INT,
         CourierID INT,
         FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
         FOREIGN KEY (CourierID) REFERENCES Courier(CourierID)
     );

INSERT INTO EmployeeCourier(EmployeeID,CourierID)
VALUES (1,4),
	   (2,5),
	   (3,8),
	   (4,9),
	   (6,10),
	   (5,6),
	   (6,3),
	   (4,2),
	   (7,1),
	   (3,7);

select * from Courier
ALTER TABLE Courier
     ADD UserID INT,
     FOREIGN KEY (UserID) REFERENCES UserTable(UserID);


select * from CourierServices
select * from CourierServiceMapping
select * from EmployeeCourier
select * from userTable

--Task 2
-- 1. List all customers:
SELECT * FROM userTable;

-- 2. List all orders for a specific customer:
SELECT * FROM courier
WHERE SenderName='Emily Davis';

-- 3. List all couriers: 
SELECT * FROM courier;

-- 4. List all packages for a specific order: 
SELECT * FROM courier
WHERE CourierID=3;

-- 5. List all deliveries for a specific courier: 
SELECT * FROM courier
WHERE CourierID=6;

-- 6. List all undelivered packages: 
SELECT * FROM courier 
WHERE status NOT LIKE 'Delivered';

--7. List all packages that are scheduled for delivery today: 
SELECT * FROM courier 
WHERE DeliveryDate=getDATE();

-- 8. List all packages with a specific status:
SELECT * FROM courier 
WHERE Status LIKE 'Pending';

-- 9. Calculate the total number of packages for each courier:
SELECT courierId, count(courierId) as No_of_packages FROM Courier
GROUP BY CourierID;

-- 10. Find the average delivery time for each courier:
SELECT AVG(DATEDIFF(day,getdate(),deliverydate)) AS [Average delivery time] FROM Courier
GROUP BY CourierID;

-- 11. List all packages with a specific weight range: 
SELECT * FROM Courier 
WHERE Weight BETWEEN 3 AND 4 ; 

--12. Retrieve employees whose names contain 'John' :
SELECT * FROM employee
WHERE name LIKE '%John%' ;

-- 13. Retrieve all courier records with payments greater than $50:
SELECT * FROM courier  
WHERE CourierID IN (select Courierid from payment
WHERE Amount>50);

-- Task 3: GroupBy, Aggregate Functions, Having, Order By, where 

-- 14. Find the total number of couriers handled by each employee.
SELECT EmployeeId,COUNT(CourierID) AS [No.of couriers] FROM EmployeeCourier
GROUP BY EmployeeID

--15. Calculate the total revenue generated by each location 
SELECT LocationId, SUM(amount) AS revenue FROM Payment 
GROUP BY LocationId;

-- 16. Find the total number of couriers delivered to each location.
SELECT LocationId, count(courierId) AS No_of_couriers FROM payment
where CourierID IN (select CourierID from Courier
					where Status='Delivered')
group by locationid;

-- 17. Find the courier with the highest average delivery time: 
SELECT CourierID,AVG(datediff(day,'2024-04-15',deliverydate)) as [avg_delivery_time] FROM courier
GROUP BY CourierID
ORDER BY [avg_delivery_time] DESC
OFFSET 0 ROWS
FETCH NEXT 1 ROW ONLY;

-- 18. Find Locations with Total Payments Less Than a Certain Amount 
select LocationID,LocationName,Address from location 
where LocationID IN(select locationid from payment 
group by locationid having sum(amount)<50);

--19. Calculate Total Payments per Location 
select locationid,sum(amount) as total_payment FROM payment
GROUP BY locationid;

-- 20. Retrieve couriers who have received payments totaling more than $1000 in a specific location 
--(LocationID = X): 
select * from courier 
WHERE courierid in (select courierid from payment where LocationId=3 
					group by CourierID
					having sum(amount)>1000)

-- 21. Retrieve couriers who have received payments totaling more than $1000 after a certain date 
--(PaymentDate > 'YYYY-MM-DD'): 	
select * from courier 
WHERE courierid in (select courierid from payment where PaymentDate>'2024-04-26' 
					group by CourierID
					having sum(amount)>1000)

-- 22. Retrieve locations where the total amount received is more than $5000 before a certain date 
--(PaymentDate > 'YYYY-MM-DD') 
SELECT * FROM location 
WHERE locationid in (SELECT locationid FROM payment
					WHERE PaymentDate < '2024-04-25'
					GROUP BY LocationId
					HAVING sum(amount)>5000);

-- Task 4: Inner Join,Full Outer Join, Cross Join, Left Outer Join,Right Outer Join

-- 23. Retrieve Payments with Courier Information
SELECT * FROM Payment p
INNER JOIN Courier c ON p.CourierID=c.CourierID;

-- 24. Retrieve Payments with Location Information 
SELECT * FROM Payment p
INNER JOIN Location l ON p.LocationId=l.LocationID;

-- 25. Retrieve Payments with Courier and Location Information 
select * from payment p
inner join location l on p.LocationId=l.LocationID
inner join Courier c on p.CourierID=c.CourierID;
 
-- 26. List all payments with courier details 

SELECT * FROM payment p 
INNER JOIN courier c ON p.CourierID=c.CourierID;

-- 27. Total payments received for each courier 
SELECT courierid,SUM(Amount) as total FROM payment
GROUP BY CourierID;

-- 28. List payments made on a specific date
SELECT * FROM Payment 
WHERE PaymentDate='2024-04-22';

-- 29. Get Courier Information for Each Payment
SELECT * FROM Payment p
INNER JOIN courier c ON p.CourierID=c.CourierID;

-- 30. Get Payment Details with Location 
SELECT * FROM payment p
INNER JOIN Location l ON p.LocationId=l.LocationID;

-- 31. Calculating Total Payments for Each Courier 
SELECT courierId, SUM(amount) as Total FROM payment
GROUP BY CourierID;

-- 32. List Payments Within a Date Range 
SELECT * FROM Payment
WHERE PaymentDate BETWEEN '2024-04-22' AND '2024-04-25';

--33. Retrieve a list of all users and their corresponding courier records, including cases where there are 
--no matches on either side 
SELECT * FROM userTable u
FULL OUTER JOIN courier c ON u.UserID=c.UserID;

-- 34. Retrieve a list of all couriers and their corresponding services, including cases where there are no 
-- matches on either side 
SELECT c.courierid,s.serviceid,cs.servicename FROM Courier c
FULL OUTER JOIN CourierServicemapping s ON c.courierid=s.courierid
FULL OUTER JOIN courierservices cs ON s.serviceid=cs.serviceid;
select * from employee
select * from payment
select * from EmployeeCourier

-- 35. Retrieve a list of all employees and their corresponding payments, including cases where there are 
-- no matches on either side 
SELECT e.employeeid,e.Name,p.paymentid,p.amount,p.paymentdate FROM Employee e
FULL OUTER JOIN EmployeeCourier ec ON e.EmployeeID=ec.EmployeeID
FULL OUTER JOIN Payment p ON ec.CourierID=p.CourierID;

-- 36. List all users and all courier services, showing all possible combinations. 
SELECT * FROM userTable
CROSS JOIN CourierServices;

-- 37. List all employees and all locations, showing all possible combinations: 
SELECT * FROM Employee
CROSS JOIN Location;

-- 38. Retrieve a list of couriers and their corresponding sender information (if available)

SELECT courierid,u.userid,u.name,u.email,u.password,u.contactnumber,u.address FROM courier c
JOIN userTable u ON c.userId=u.UserID;

-- 39. Retrieve a list of couriers and their corresponding receiver information (if available):
SELECT courierid, receivername,ReceiverAddress FROM Courier;

-- 40. Retrieve a list of couriers along with the courier service details (if available):
select * from Courier c
inner join CourierServiceMapping cs on c.CourierID=cs.CourierID
inner join CourierServices s on cs.ServiceID=s.ServiceID

select * from courier o
inner join (select courierid,s.serviceid,servicename,cost from CourierServices s 
			join CourierServiceMapping cs on cs.ServiceID=s.ServiceID) i ON o.CourierID=i.CourierID

-- 41. Retrieve a list of employees and the number of couriers assigned to each employee:

select e.employeeid,name,count(courierid) as [no.of couriers] from Employee e
inner join EmployeeCourier ec on e.EmployeeID=ec.EmployeeID
group by e.EmployeeID,name
--or
select employeeid,count(courierid) from EmployeeCourier
group by EmployeeID

-- 42. Retrieve a list of locations and the total payment amount received at each location: 

SELECT LocationId,SUM(Amount) AS TOTAL FROM payment
GROUP BY LocationID;

-- 43. Retrieve all couriers sent by the same sender (based on SenderName). 
SELECT * FROM Courier
WHERE SenderName IN ( SELECT SenderName FROM Courier
					GROUP BY SenderName
					HAVING COUNT(SenderName)>1);

-- 44. List all employees who share the same role. 
SELECT EmployeeID,name,Role FROM Employee 
WHERE role IN (SELECT role FROM Employee 
			GROUP BY Role
			HAVING COUNT(Role)>1);

--SELECT i.EmployeeID,i.name,i.Role FROM Employee i
--join (SELECT role FROM Employee o where o.employeeid=i.employeeid )

SELECT * from Employee
update employee set Role='courier' where EmployeeID=9
update employee set Role='supervisor' where EmployeeID=8
INSERT INTO Employee (EmployeeID, Name, Email, ContactNumber, Role, Salary)
VALUES
    (11, 'Joe Manager', 'joe_manager@example.com', '1122334445', 'Manager', 50000.00)

-- 45. Retrieve all payments made for couriers sent from the same location.
SELECT * FROM payment
WHERE LocationId IN (SELECT LocationId FROM payment
					GROUP BY LocationID
					HAVING COUNT(LocationID)>1);

update location set address='456 Elm St, Town' where LocationID=2
update location set address='987 Cedar St, Countryside' where LocationID=6
update location set address='789 Oak St, Village' where LocationID=3
update location set address='753 Maple St, Rural' where LocationID=7
update location set address='321 Pine St, Hamlet' where LocationID=4
update location set address='654 Birch St, Suburb' where LocationID=5
update location set address='159 Walnut St, Coastal' where LocationID=8
update location set address='246 Pineapple St, Island' where LocationID=9
update location set address='369 Peach St, Peninsula' where LocationID=10

update courier set SenderAddress='456 Elm St, Town' where CourierID=4
update courier set SenderAddress='123 Main St, City' where CourierID=3
select * from userTable 
update userTable set address='456 Elm St, Town' where userId=4 
update userTable set Address='123 Main St, City' where userID=3
update Payment set locationid=1 where PaymentID=3
update Payment set locationid=2 where PaymentID=4

-- 46. Retrieve all couriers sent from the same location (based on SenderAddress). 
SELECT *FROM Courier
WHERE cast(SenderAddress as varchar) IN (SELECT cast(SenderAddress as varchar)FROM Courier
										GROUP BY cast(SenderAddress as varchar)
										HAVING COUNT(*) > 1);

-- 47. List employees and the number of couriers they have delivered: 
select e.EmployeeID,e.name,count(courierid) as [no.of couriers] from Employee e
inner join EmployeeCourier ec on  e.EmployeeID=ec.EmployeeID
group by e.EmployeeID,e.name;

-- 48. Find couriers that were paid an amount greater than the cost of their respective courier services

select p.courierid from payment p
inner join CourierServiceMapping cs on p.CourierID=cs.CourierID
inner join CourierServices c on cs.ServiceID=c.ServiceID
where Amount>cost

-- 49. Find couriers that have a weight greater than the average weight of all couriers
SELECT * FROM Courier
WHERE Weight>(SELECT AVG(Weight) FROM Courier)

-- 50. Find the names of all employees who have a salary greater than the average salary: 
SELECT * FROM Employee
WHERE Salary>(SELECT AVG(Salary) FROM Employee);

-- 51. Find the total cost of all courier services where the cost is less than the maximum cost
SELECT SUM(cost) AS Total FROM CourierServices
WHERE Cost<(SELECT MAX(Cost) FROM CourierServices);

--52. Find all couriers that have been paid for 
SELECT CourierId, Amount FROM Payment
WHERE Amount IS NOT NULL;

-- 53. Find the locations where the maximum payment amount was made 

SELECT locationID FROM Payment
WHERE Amount=(SELECT MAX(Amount) FROM Payment)
--or
SELECT * FROM Location
WHERE LocationID=(SELECT locationID FROM Payment
WHERE Amount=(SELECT MAX(Amount) FROM Payment))

-- 54. Find all couriers whose weight is greater than the weight of all couriers sent by a specific sender 
-- (e.g., 'SenderName'):

SELECT * FROM Courier
WHERE Weight>ALL(SELECT Weight FROM Courier
			WHERE SenderName='Sarah Taylor')