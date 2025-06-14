# Weather Observation Station 8

## Problem Description

Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first AND last characters. Your result cannot contain duplicates.

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
2. Apply a WHERE clause with multiple conditions:
   - Ensure LAT_N and LONG_W are not NULL
   - Check if the first character of the CITY name is a vowel
   - Check if the last character of the CITY name is a vowel
3. Order the results alphabetically

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
   - Use SUBSTRING(CITY, 1, 1) to extract the first character
   - Use SUBSTRING(CITY, -1) to extract the last character
   - Convert both to lowercase with LOWER
   - Check if both are vowels using the IN operator
   ```sql
   WHERE 
       (LAT_N IS NOT NULL) AND
       (LONG_W IS NOT NULL) AND 
       LOWER(SUBSTRING(CITY, -1)) IN ('a', 'e', 'i', 'o', 'u') AND
       LOWER(SUBSTRING(CITY, 1, 1)) IN ('a', 'e', 'i', 'o', 'u')
   ```

4. Add the ORDER BY clause to sort the results alphabetically:
   ```sql
   ORDER BY CITY
   ```

5. The final query:
   ```sql
   SELECT 
       DISTINCT CITY
   FROM
       STATION
   WHERE 
       (LAT_N IS NOT NULL) AND
       (LONG_W IS NOT NULL) AND 
       LOWER(SUBSTRING(CITY, -1)) IN ('a', 'e', 'i', 'o', 'u') AND
       LOWER(SUBSTRING(CITY, 1, 1)) IN ('a', 'e', 'i', 'o', 'u')
   ORDER BY CITY
   ;
   ```

## Expected Output

The query will return a list of unique city names from the STATION table where both the first and last characters are vowels (a, e, i, o, or u), sorted alphabetically.