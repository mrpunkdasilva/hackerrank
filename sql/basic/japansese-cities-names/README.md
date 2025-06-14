# Japanese Cities' Names

## Problem Description

Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

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

Use a SELECT statement to retrieve all columns from the CITY table, and apply a WHERE clause to filter for cities with the country code 'JPN'.

## Step-by-Step Explanation

1. Start with the SELECT statement to retrieve all columns:
   ```sql
   SELECT *
   ```

2. Specify the table to query from:
   ```sql
   FROM CITY
   ```

3. Add the WHERE clause to filter by country code:
   ```sql
   WHERE COUNTRYCODE LIKE 'JPN'
   ```

4. The final query:
   ```sql
   SELECT 
       *
   FROM
       CITY
   WHERE
       COUNTRYCODE LIKE 'JPN';
   ```

## Expected Output

The query will return all columns for cities in Japan (with COUNTRYCODE 'JPN').