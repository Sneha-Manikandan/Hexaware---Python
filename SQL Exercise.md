# EXERCISE 1
## Filtering columns

1. Find the title of each film
````sql
SELECT Title FROM Movies;
````
2. FInd the director of each film 
````sql
SELECT Director From Movies;
````
3. Find the title and director of each film
``````sql
SELECT Title, Director FROM Movies;
``````
4. Find the title and year of each film
````sql
SELECT Title,Year FROM Movies;
````
5. Find all the information about each film
````sql
SELECT * FROM Movies
````
# EXERCISE 2

1. Find the movie with a row id of 6
````sql
SELECT * FROM Movies WHERE Id=6;
````
2. Find the movies released in the years between 
2000 and 2010
````sql
SELECT * FROM Movies WHERE Year BETWEEN 2000 AND 2010;
````
3. Find the movies not released in the years between 2000 and 2010
````sql
SELECT * FROM Movies WHERE Year NOT BETWEEN 2000 AND 2010;
````
4. Find the first 5 Pixar movies and their release year
````sql
SELECT Title,Year FROM Movies WHERE ID BETWEEN 1 AND 5;
````

# EXERCISE 3

1. Find all the Toy Story movies
````sql
SELECT * FROM Movies WHERE Title LIKE "Toy Story%";
````
2. Find all the movies directed by John Lasseter
````sql
SELECT * FROM Movies WHERE Director="John Lasster";
````
3. Find all the movies (and director) not directed by John Lasseter
````sql
SELECT Title,Director FROM Movies WHERE Director NOT LIKE "John Lasseter";
````
4. Find all the WALL-* movies
````sql
SELECT * FROM Movies WHERE Title LIKE "WALL-%";
````
# EXERCISE 4

1. List all directors of Pixar movies (alphabetically), without duplicates
```sql
SELECT DISTINCT Director FROM Movies ORDER BY Director ASC;
```
2. List the last four Pixar movies released (ordered from most recent to least)
```sql
SELECT * FROM Movies ORDER BY Year DESC LIMIT 4;
```
3. List the first five Pixar movies sorted alphabetically
```sql
SELECT * FROM Movies ORDER BY Title ASC LIMIT 5; 
```
4. List the next five Pixar movies sorted alphabetically
```sql
SELECT Title FROM Movies ORDER BY Title ASC LIMIT 5 OFFSET 5; 
```
# EXERCISE 5

1. List all the Canadian cities and their populations
```sql
SELECT City, Population FROM North_american_cities 
WHERE Country="Canada";
```
2. Order all the cities in the United States by their latitude from north to south
```sql
SELECT * FROM North_american_cities 
WHERE Country="United States" ORDER BY Latitude DESC;
```
3. List all the cities west of Chicago, ordered from west to east
```sql
SELECT * FROM North_american_cities 
WHERE Longitude <-87.629798 ORDER BY Longitude ASC;
```
```sql
SELECT * FROM North_american_cities 
WHERE Longitude<(Select longitude FROM North_american_cities
WHERE city = "Chicago") ORDER BY Longitude ASC;
```
4. List the two largest cities in Mexico (by population)
```sql
SELECT * FROM North_american_cities 
WHERE Country="Mexico" 
ORDER BY Population DESC 
LIMIT 2;
```
5. List the third and fourth largest cities (by population) in the United States and their population
```sql
SELECT * FROM North_american_cities 
WHERE Country="United States" 
ORDER BY Population DESC 
LIMIT 2 OFFSET 2;
```
# EXERCISE 6

1. Find the domestic and international sales for each movie
```sql
SELECT * FROM movies
INNER JOIN Boxoffice ON Id=Movie_ID;
```
2. Show the sales numbers for each movie that did better internationally rather than domestically
```sql
SELECT * FROM movies
INNER JOIN Boxoffice ON Movies.Id=Boxoffice.Movie_ID
WHERE International_sales>Domestic_sales;
```
3. List all the movies by their ratings in descending order
```sql
SELECT * FROM movies
INNER JOIN Boxoffice ON Movies.Id=Boxoffice.Movie_ID
ORDER BY Rating DESC;
```
# EXERCISE 7

1. Find the list of all buildings that have employees
```sql
SELECT DISTINCT building FROM employees;
```
2. Find the list of all buildings and their capacity
```sql
SELECT * FROM Buildings
```
3. List all buildings and the distinct employee roles in each building (including empty buildings)
```sql
SELECT DISTINCT Building_name, Role FROM Buildings
LEFT JOIN Employees ON Building_name=Building;
```
# EXERCISE 8

1. Find the name and role of all employees who have not been assigned to a building 
```sql
SELECT Name,Role FROM Employees
WHERE Building IS NULL;
```
2. Find the names of the buildings that hold no employees
```sql
SELECT DISTINCT Building_name
FROM Buildings 
LEFT JOIN Employees
ON Building_name = Building
WHERE Role IS NULL;
```
# EXERCISE 9

1. List all movies and their combined sales in millions of dollars
```sql
SELECT Title, (Domestic_sales + International_sales)/1000000 AS Combined_sales FROM Movies
INNER JOIN Boxoffice ON Id=Movie_id;
```
2. List all movies and their ratings in percent
```sql
SELECT Title, Rating * 10 AS Rating FROM Movies
INNER JOIN Boxoffice ON Id=Movie_id;
```
3. List all movies that were released on even number years
```sql
SELECT Title, Year FROM Movies
WHERE Year%2==0;
```
# EXERCISE 10
The GROUP BY clause works by grouping rows that have the same value in the column specified.

1. Find the longest time that an employee has been at the studio
```sql
SELECT Name, MAX(Years_employed) FROM employees
```
2. For each role, find the average number of years employed by employees in that role
```sql
SELECT Role, AVG(Years_employed) FROM employees
GROUP BY Role;
```
3. Find the total number of employee years worked in each building
```sql
SELECT Building, SUM(Years_employed) FROM employees
GROUP BY Building;
```
# EXERCISE 11

1. Find the number of Artists in the studio (without a HAVING clause)
```sql
SELECT COUNT(Role) AS Total FROM employees
WHERE Role="Artist";
```
2. Find the number of Employees of each role in the studio
```sql
SELECT Role, COUNT(Role) AS No_of_employee FROM Employees
GROUP BY Role;
```
3. Find the total number of years employed by all Engineers
```sql
SELECT Role, SUM(Years_employed) AS Years_employed FROM Employees
WHERE Role="Engineer";
```
# EXERCISE 12

1. Find the number of movies each director has directed
```sql
SELECT Director,COUNT(Title) AS No_of_movies FROM Movies
GROUP BY(Director);
```
2. Find the total domestic and international sales that can be attributed to each director
```sql
SELECT Director,SUM(Domestic_sales + International_sales) AS Sales FROM Movies
INNER JOIN Boxoffice ON Id=Movie_id 
GROUP BY(Director);
```
# EXERCISE 13

1. Add the studio's new production, Toy Story 4 to the list of movies (you can use any director)
```sql
INSERT INTO Movies
VALUES(4,"Toy Story 4", "John Lasseter",2000,92);
```
2. Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, and made 340 million domestically and 270 million internationally. Add the record to the BoxOffice table.
```sql
INSERT INTO Boxoffice
VALUES(4,8.7,340000000,270000000);
```
# EXERCISE 14

1. The director for A Bug's Life is incorrect, it was actually directed by John Lasseter
```sql
SELECT * FROM Movies
WHERE Id=2
UPDATE Movies
SET Director="John Lasseter";
```
Write select statement to check if correct rows or columns are selected
```sql
UPDATE Movies
SET Director="John Lasseter"
WHERE Title="A Bug's Life";
```
2. The year that Toy Story 2 was released is incorrect, it was actually released in 1999
```sql
UPDATE Movies
SET Year=1999
WHERE Title="Toy Story 2";
```
3. Both the title and director for Toy Story 8 is incorrect! The title should be "Toy Story 3" and it was directed by Lee Unkrich
```sql
SELECT * FROM Movies
WHERE Id=11
UPDATE Movies
SET Title="Toy Story 3",
    Director="Lee Unkrich";
```
# EXERCISE 15

1. This database is getting too big, lets remove all movies that were released before 2005.
Write select statement to check if right rows are selected before doing deletion
```sql
DELETE FROM Movies
WHERE YEAR<2005;
```
2. Andrew Stanton has also left the studio, so please remove all movies directed by him.
```sql
DELETE FROM Movies
WHERE Director="Andrew Stanton";
```
# EXERCISE 16

1. Create a new table named Database with the following columns:
- Name A string (text) describing the name of the database
- Version A number (floating point) of the latest version of this database
- Download_count An integer count of the number of times this database was downloaded
This table has no constraints.
```sql
CREATE TABLE Database(
    Name TEXT,
    Version FLOAT,
    Download_count INTEGER);
```
This is called SCHEMA

# EXERCISE 17

1. Add a column named Aspect_ratio with a FLOAT data type to store the aspect-ratio each movie was released in.
```sql
ALTER TABLE Movies
ADD Aspect_ratio FLOAT;
```
2. Add another column named Language with a TEXT data type to store the language that the movie was released in. Ensure that the default for this language is English.
```sql
ALTER TABLE Movies
ADD Language TEXT
DEFAULT "English";
```
# EXERCISE 18

1. We've sadly reached the end of our lessons, lets clean up by removing the Movies table
```sql
DROP TABLE Movies;
```
2. And drop the BoxOffice table as well
```sql
DROP TABLE Boxoffice;
```
