# Revising the Select Query I

## Problem Description

Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

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

1. Use a SELECT statement to query all columns (*) from the CITY table
2. Apply a WHERE clause with two conditions:
   - POPULATION >= 100000 (cities with populations larger than 100000)
   - COUNTRYCODE = "USA" (cities in America)

## Step-by-Step Explanation

1. Start with the basic SELECT statement to retrieve all columns:
   ```sql
   SELECT *
   ```

2. Specify the table to query from:
   ```sql
   FROM CITY
   ```

3. Add the WHERE clause with the required conditions:
   ```sql
   WHERE POPULATION >= 100000 AND COUNTRYCODE = "USA"
   ```

4. The final query:
   ```sql
   SELECT
   *
   FROM CITY
   WHERE POPULATION >= 100000 AND COUNTRYCODE = "USA";
   ```

## Expected Output

The query will return all columns (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION) for cities in the USA with populations greater than 100000.