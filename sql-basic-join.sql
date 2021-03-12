-- Asian Population
/*
Given the CITY and COUNTRY tables, 
query the sum of the populations of all cities where the CONTINENT is 'Asia'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

SELECT SUM(CITY.POPULATION)
FROM CITY
JOIN COUNTRY
    ON CITY.COUNTRYCODE = COUNTRY.CODE 
WHERE CONTINENT = 'Asia';

-- African Cities
/*
Given the CITY and COUNTRY tables, 
query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

SELECT CITY.NAME
FROM CITY
JOIN COUNTRY
    ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE CONTINENT = 'Africa';  

-- Average Population of Each Continent
/*
Given the CITY and COUNTRY tables, query the names of all the continents 
(COUNTRY.Continent) and their respective average city populations 
(CITY.Population) rounded down to the nearest integer.
*/

SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION))
FROM COUNTRY
JOIN CITY
    ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT;

-- The Report
/*
You are given two tables: Students and Grades. 
Students contains three columns ID, Name and Marks.

Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. 
Ketty doesn't want the NAMES of those students who received a grade lower than 8. 
The report must be in descending order by grade -- i.e. higher grades are entered first. 
If there is more than one student with the same grade (8-10) assigned to them, 
order those particular students by their name alphabetically. Finally, if the grade is lower than 8, 
use "NULL" as their name and list them by their grades in descending order. 
If there is more than one student with the same grade (1-7) assigned to them, 
order those particular students by their marks in ascending order.

Write a query to help Eve.
*/

SELECT NAME, GRADE, MARKS
FROM Students
JOIN Grades

ORDER BY GRADE DESC, NAME