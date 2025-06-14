# Select By ID

## Problem Description

Query all columns for a city in the CITY table with the ID 1661.

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

Use a SELECT statement with the asterisk (*) wildcard to retrieve all columns from the CITY table, and apply a WHERE clause to filter for the specific ID.

## Step-by-Step Explanation

1. Start with the SELECT statement to retrieve all columns:
   ```sql
   SELECT *
   ```

2. Specify the table to query from:
   ```sql
   FROM CITY
   ```

3. Add the WHERE clause to filter by ID:
   ```sql
   WHERE ID = 1661
   ```

4. The final query:
   ```sql
   SELECT
   *
   FROM
   CITY
   WHERE
   ID = 1661;
   ```

## Expected Output

The query will return all columns (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION) for the city with ID 1661.