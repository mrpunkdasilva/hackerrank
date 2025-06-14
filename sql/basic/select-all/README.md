# Select All

## Problem Description

Query all columns (attributes) for every row in the CITY table.

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

Use a simple SELECT statement with the asterisk (*) wildcard to retrieve all columns from the CITY table.

## Step-by-Step Explanation

1. Start with the SELECT statement and use the asterisk (*) to select all columns:
   ```sql
   SELECT *
   ```

2. Specify the table to query from:
   ```sql
   FROM CITY;
   ```

3. The final query:
   ```sql
   SELECT
   *
   FROM CITY;
   ```

## Expected Output

The query will return all rows from the CITY table, displaying all columns (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION) for each city in the database.