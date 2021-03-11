-- Revising Aggregations - The Count Function
-- Query a count of the number of cities in CITY having a Population larger than .

SELECT COUNT(NAME)
FROM CITY
WHERE POPULATION > 100000;

-- Revising Aggregations - The Sum Function
-- Query the total population of all cities in CITY where District is California.

SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';

-- Revising Aggregations - Averages
-- Query the average population of all cities in CITY where District is California.

SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';

-- Average Population
-- Query the average population for all cities in CITY, rounded down to the nearest integer.

SELECT ROUND(AVG(POPULATION))
FROM CITY;

-- Japan Population
-- Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';

-- Population Density Difference
-- Query the difference between the maximum and minimum populations in CITY.

SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;

-- The Blunder
/* Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeroes removed), and the actual average salary.
Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.
*/

SELECT CEILING(AVG(Salary) - AVG(REPLACE(Salary,'0','')))
FROM EMPLOYEES;

-- Top Earners
/* We define an employee's total earnings to be their monthly salary x months worked, 
and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 
Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. 
Then print these values as  space-separated integers.
*/

SELECT (salary * months) as earnings, count(*) 
FROM employee 
GROUP BY earnings
ORDER BY earnings DESC 
LIMIT 1;

-- Weather Observation Station 2
/* 
Query the following two values from the STATION table:
1. The sum of all values in LAT_N rounded to a scale of decimal places.
2. The sum of all values in LONG_W rounded to a scale of  decimal places.
*/

SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2)
FROM STATION;

-- Weather Observation Station 13
/* 
Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 
and less than 137.2345. 
Truncate your answer to 4 decimal places.
*/

SELECT ROUND(SUM(LAT_N),4) as lat_sum
FROM STATION 
WHERE LAT_N > 38.7880
    AND LAT_N < 137.2345;