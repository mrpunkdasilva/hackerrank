# Weather Observation Station 12

## Problem Description

Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

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
2. Apply a WHERE clause with conditions combined with AND:
   - Ensure LAT_N and LONG_W are not NULL
   - Check if the first character of the CITY name is NOT a vowel AND
   - Check if the last character of the CITY name is NOT a vowel
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
   - Use SUBSTRING to extract the first character and check if it's NOT a vowel
   - AND use SUBSTRING with a negative index to extract the last character and check if it's NOT a vowel
   ```sql
   WHERE 
       (LAT_N IS NOT NULL) AND
       (LONG_W IS NOT NULL) AND 
       LOWER(SUBSTRING(CITY, 1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u') AND
       LOWER(SUBSTRING(CITY, -1)) NOT IN ('a', 'e', 'i', 'o', 'u')
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
       LOWER(SUBSTRING(CITY, 1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u') AND
       LOWER(SUBSTRING(CITY, -1)) NOT IN ('a', 'e', 'i', 'o', 'u')
   ORDER BY CITY
   ;
   ```

## Expected Output

The query will return a list of unique city names from the STATION table where both the first character is NOT a vowel AND the last character is NOT a vowel, sorted alphabetically.