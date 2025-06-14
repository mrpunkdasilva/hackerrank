# Weather Observation Station 6

## Problem Description

Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

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

1. Use a SELECT statement to retrieve the CITY column from the STATION table
2. Apply a WHERE clause with conditions:
   - Ensure LAT_N and LONG_W are not NULL
   - Check if the first character of the CITY name is a vowel using the SUBSTRING function and the IN operator

## Step-by-Step Explanation

1. Start with the SELECT statement to retrieve the CITY column:
   ```sql
   SELECT CITY
   ```

2. Specify the table to query from:
   ```sql
   FROM STATION
   ```

3. Add the WHERE clause with conditions:
   - Check for valid latitude and longitude values
   - Use SUBSTRING to extract the first character of each CITY name
   - Convert it to lowercase with LOWER
   - Check if it's a vowel using the IN operator
   ```sql
   WHERE 
       (LAT_N IS NOT NULL) AND
       (LONG_W IS NOT NULL) AND 
       LOWER(SUBSTRING(CITY,1,1)) IN ('a', 'e', 'i', 'o', 'u')
   ```

4. The final query:
   ```sql
   SELECT 
       CITY
   FROM
       STATION
   WHERE 
       (LAT_N IS NOT NULL) AND
       (LONG_W IS NOT NULL) AND 
       LOWER(SUBSTRING(CITY,1,1)) IN ('a', 'e', 'i', 'o', 'u')
   ;
   ```

## Expected Output

The query will return a list of city names from the STATION table where the first character is a vowel (a, e, i, o, or u). The result will not contain duplicate city names.