# Weather Observation Station 5

## Problem Description

Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

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

This problem requires two separate queries:
1. First query to find the city with the shortest name
2. Second query to find the city with the longest name

For each query, we need to:
- Select the CITY name and its length
- Order the results appropriately
- Use LIMIT to get only the first result

## Step-by-Step Explanation

### Query 1: Finding the city with the shortest name

1. Select the CITY name and calculate its length:
   ```sql
   SELECT CITY, LENGTH(CITY)
   ```

2. Specify the table to query from:
   ```sql
   FROM STATION
   ```

3. Add a WHERE clause to ensure we only consider valid entries:
   ```sql
   WHERE (LAT_N IS NOT NULL) AND (LONG_W IS NOT NULL)
   ```

4. Order the results by length (ascending) and then alphabetically:
   ```sql
   ORDER BY LENGTH(CITY), CITY ASC
   ```

5. Limit the result to just the first row:
   ```sql
   LIMIT 1
   ```

### Query 2: Finding the city with the longest name

1. Select the CITY name and calculate its length:
   ```sql
   SELECT CITY, LENGTH(CITY)
   ```

2. Specify the table to query from:
   ```sql
   FROM STATION
   ```

3. Add a WHERE clause to ensure we only consider valid entries:
   ```sql
   WHERE (LAT_N IS NOT NULL) AND (LONG_W IS NOT NULL)
   ```

4. Order the results by length (descending) and then alphabetically:
   ```sql
   ORDER BY LENGTH(CITY) DESC, CITY DESC
   ```

5. Limit the result to just the first row:
   ```sql
   LIMIT 1
   ```

## Expected Output

The output will consist of two rows:
1. The first row will contain the name of the city with the shortest name and its length
2. The second row will contain the name of the city with the longest name and its length