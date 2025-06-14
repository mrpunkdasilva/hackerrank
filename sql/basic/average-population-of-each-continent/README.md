# Average Population of Each Continent

## Problem Description

Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.CONTINENT) and their respective average city populations (CITY.POPULATION) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

## Input Format

The CITY and COUNTRY tables are described as follows:

**CITY**

| Field       | Type         |
|-------------|--------------|
| ID          | NUMBER       |
| NAME        | VARCHAR2(17) |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT    | VARCHAR2(20) |
| POPULATION  | NUMBER       |

**COUNTRY**

| Field          | Type         |
|----------------|--------------|
| CODE           | VARCHAR2(3)  |
| NAME           | VARCHAR2(44) |
| CONTINENT      | VARCHAR2(13) |
| REGION         | VARCHAR2(25) |
| SURFACEAREA    | NUMBER       |
| INDEPYEAR      | VARCHAR2(5)  |
| POPULATION     | NUMBER       |
| LIFEEXPECTANCY | VARCHAR2(4)  |
| GNP            | NUMBER       |
| GNPOLD         | VARCHAR2(9)  |
| LOCALNAME      | VARCHAR2(44) |
| GOVERNMENTFORM | VARCHAR2(44) |
| HEADOFSTATE    | VARCHAR2(32) |
| CAPITAL        | VARCHAR2(4)  |
| CODE2          | VARCHAR2(2)  |

## Solution Approach

1. Join the CITY and COUNTRY tables using the country code as the joining key
2. Group the results by continent
3. Calculate the average population for each continent
4. Round down the average to the nearest integer using the FLOOR function

## Step-by-Step Explanation

1. Start with the SELECT statement to retrieve the continent and the average population:
   ```sql
   SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION))
   ```

2. Specify the tables to query from and how to join them:
   ```sql
   FROM CITY
   JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
   ```

3. Group the results by continent:
   ```sql
   GROUP BY COUNTRY.CONTINENT
   ```

4. The final query:
   ```sql
   SELECT 
       COUNTRY.CONTINENT, 
       FLOOR(AVG(CITY.POPULATION)) AS AVG_POPULATION
   FROM 
       CITY 
   JOIN 
       COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
   GROUP BY 
       COUNTRY.CONTINENT
   ;
   ```

## Expected Output

The query will return two columns:
1. CONTINENT - The name of the continent
2. AVG_POPULATION - The average population of cities in that continent, rounded down to the nearest integer