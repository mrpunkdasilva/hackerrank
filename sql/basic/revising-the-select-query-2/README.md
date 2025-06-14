# Revising the Select Query II

## Problem Description

Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

## Input Format

The CITY table is described as follows:

| Field       | Type         |
|-------------|--------------|
| ID          | NUMBER       |
| NAME        | VARCHAR2(17) |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT    | VARCHAR2(20) |
| POPULATION  | NUMBER       |

## Solution Approach

1. Use a SELECT statement to query only the NAME column from the CITY table
2. Apply a WHERE clause with two conditions:
   - COUNTRYCODE = "USA" (cities in America)
   - POPULATION >= 120000 (cities with populations larger than 120000)

## Step-by-Step Explanation

1. Start with the SELECT statement to retrieve only the NAME column:
   ```sql
   SELECT NAME
   ```

2. Specify the table to query from:
   ```sql
   FROM CITY
   ```

3. Add the WHERE clause with the required conditions:
   ```sql
   WHERE COUNTRYCODE = "USA" AND POPULATION >= 120000
   ```

4. The final query:
   ```sql
   SELECT
       NAME
   FROM 
       CITY
   WHERE
       COUNTRYCODE = "USA" AND
       POPULATION >= 120000
   ;
   ```

## Expected Output

The query will return the names of all cities in the USA with populations greater than 120000.