# Weather Observation Station 4

## Problem Description

Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

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

To find the difference between the total number of CITY entries and the number of distinct CITY entries:
1. Calculate the total count of CITY entries using COUNT(CITY)
2. Calculate the count of distinct CITY entries using COUNT(DISTINCT CITY)
3. Subtract the second value from the first

## Step-by-Step Explanation

1. Start with the SELECT statement to calculate the difference:
   ```sql
   SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
   ```
   
   This expression:
   - COUNT(CITY) counts all city entries (including duplicates)
   - COUNT(DISTINCT CITY) counts only unique city names
   - The difference between these two values gives us the number of duplicate city entries

2. Specify the table to query from:
   ```sql
   FROM STATION
   ```

3. Add the WHERE clause to ensure we only consider valid entries:
   ```sql
   WHERE (LAT_N IS NOT NULL) AND (LONG_W IS NOT NULL)
   ```

4. The final query:
   ```sql
   SELECT 
       COUNT(CITY) - COUNT(DISTINCT CITY)
   FROM
       STATION
   WHERE
       (LAT_N IS NOT NULL)
           AND (LONG_W IS NOT NULL)
   ;
   ```

## Expected Output

The query will return a single value representing the number of duplicate CITY entries in the STATION table (i.e., the difference between the total number of CITY entries and the number of distinct CITY entries).