# Weather Observation Station 3

## Problem Description

Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.

## Input Format

The STATION table is described as follows:

| Field  | Type         |
|--------|--------------|
| ID     | NUMBER       |
| CITY   | VARCHAR2(21) |
| STATE  | VARCHAR2(2)  |
| LAT_N  | NUMBER       |
| LONG_W | NUMBER       |

where LAT_N is the northern latitude and LONG_W is the western longitude.

## Solution Approach

1. Use a SELECT statement with the DISTINCT keyword to retrieve unique CITY names
2. Apply a WHERE clause to filter for cities with even ID numbers (ID % 2 = 0)
3. Add additional conditions to ensure we only consider valid entries

## Step-by-Step Explanation

1. Start with the SELECT statement using DISTINCT to get unique city names:
   ```sql
   SELECT DISTINCT CITY
   ```

2. Specify the table to query from:
   ```sql
   FROM STATION
   ```

3. Add the WHERE clause with conditions:
   - Check for valid latitude and longitude values
   - Filter for even ID numbers using the modulo operator (ID % 2 = 0)
   ```sql
   WHERE 
       (LAT_N IS NOT NULL) AND
       (LONG_W IS NOT NULL) AND
       (ID % 2 = 0)
   ```

4. The final query:
   ```sql
   SELECT DISTINCT
       CITY
   FROM
       STATION
   WHERE 
       (LAT_N IS NOT NULL) AND
       (LONG_W IS NOT NULL) AND
       (ID % 2 = 0)
   ;
   ```

## Expected Output

The query will return a list of unique city names from the STATION table where the ID is an even number.