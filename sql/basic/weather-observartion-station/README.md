# Weather Observation Station

## Problem Description

Query a list of CITY and STATE from the STATION table where the LAT_N and LONG_W values are not NULL.

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

Use a SELECT statement to retrieve the CITY and STATE columns from the STATION table, with a WHERE clause to filter out records where LAT_N or LONG_W is NULL.

## Step-by-Step Explanation

1. Start with the SELECT statement to retrieve the CITY and STATE columns:
   ```sql
   SELECT CITY, STATE
   ```

2. Specify the table to query from:
   ```sql
   FROM STATION
   ```

3. Add the WHERE clause to filter out NULL values in LAT_N and LONG_W:
   ```sql
   WHERE (LAT_N IS NOT NULL) AND (LONG_W IS NOT NULL)
   ```

4. The final query:
   ```sql
   SELECT 
       CITY, STATE
   FROM
       STATION
   WHERE
       (LAT_N IS NOT NULL)
           AND (LONG_W IS NOT NULL)
   ;
   ```

## Expected Output

The query will return two columns, CITY and STATE, for all weather stations in the STATION table that have valid (non-NULL) latitude and longitude values.