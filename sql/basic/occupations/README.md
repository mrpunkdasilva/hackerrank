# Occupations

## Problem Description

Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

## Input Format

The OCCUPATIONS table is described as follows:

| Column     | Type    |
|------------|---------|
| Name       | String  |
| Occupation | String  |

Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

## Solution Approach

This problem requires pivoting the data from rows to columns. We'll use:
1. A subquery with ROW_NUMBER() to assign sequential numbers to each name within each occupation
2. CASE statements to pivot the data into columns
3. GROUP BY to align the rows properly

## Step-by-Step Explanation

1. First, create a subquery to assign row numbers to each name within each occupation:
   ```sql
   SELECT name, occupation, ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) AS rn 
   FROM OCCUPATIONS
   ```
   This gives each name a sequential number within its occupation group, sorted alphabetically.

2. In the outer query, use CASE statements with MAX aggregation to pivot the data:
   ```sql
   SELECT 
       MAX(CASE WHEN occupation = 'Doctor' THEN name ELSE NULL END) AS Doctor,
       MAX(CASE WHEN occupation = 'Professor' THEN name ELSE NULL END) AS Professor,
       MAX(CASE WHEN occupation = 'Singer' THEN name ELSE NULL END) AS Singer,
       MAX(CASE WHEN occupation = 'Actor' THEN name ELSE NULL END) AS Actor
   ```
   The MAX function is used here because we're grouping by row number, and for each row number and occupation, there will be at most one name.

3. Group by the row number to align names with the same position in their respective occupations:
   ```sql
   GROUP BY rn
   ```

4. Order the results by row number to maintain the alphabetical ordering within each occupation:
   ```sql
   ORDER BY rn
   ```

5. The final query:
   ```sql
   SELECT MAX(CASE WHEN occupation = 'Doctor' THEN name ELSE NULL END) AS Doctor,
          MAX(CASE WHEN occupation = 'Professor' THEN name ELSE NULL END) AS Professor,
          MAX(CASE WHEN occupation = 'Singer' THEN name ELSE NULL END) AS Singer,
          MAX(CASE WHEN occupation = 'Actor' THEN name ELSE NULL END) AS Actor
   FROM (SELECT name, occupation, ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) AS rn FROM OCCUPATIONS)
   GROUP BY rn
   ORDER BY rn;
   ```

## Expected Output

The output will be a table with four columns: Doctor, Professor, Singer, and Actor. Each row will contain names from each occupation at the same alphabetical position, with NULL values where there are no more names for a particular occupation.