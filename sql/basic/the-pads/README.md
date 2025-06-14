# The PADS

## Problem Description

Generate the following two result sets:

1. Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).

2. Query the number of occurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:
   ```
   There are a total of [occupation_count] [occupation]s.
   ```
   where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one occupation has the same [occupation_count], they should be ordered alphabetically.

## Input Format

The OCCUPATIONS table is described as follows:

| Column     | Type    |
|------------|---------|
| Name       | String  |
| Occupation | String  |

Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

## Solution Approach

This problem requires two separate queries:

1. First query to format names with occupation initials
2. Second query to count occupations and format the output

## Step-by-Step Explanation

### Query 1: Names with Occupation Initials

1. Use CONCAT to combine the name with the first letter of occupation in parentheses:
   ```sql
   SELECT CONCAT(NAME, '(', LEFT(OCCUPATION, 1), ')')
   ```

2. Specify the table to query from:
   ```sql
   FROM OCCUPATIONS
   ```

3. Order the results alphabetically by name:
   ```sql
   ORDER BY NAME ASC
   ```

### Query 2: Occupation Counts

1. Use CONCAT to format the output string with the count of each occupation:
   ```sql
   SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(OCCUPATION), 's.')
   ```

2. Specify the table to query from:
   ```sql
   FROM OCCUPATIONS
   ```

3. Group the results by occupation to get counts:
   ```sql
   GROUP BY OCCUPATION
   ```

4. Order the results by count and then alphabetically:
   ```sql
   ORDER BY COUNT(*), OCCUPATION ASC
   ```

## Expected Output

The output will consist of multiple rows:
1. First set of rows: Names with occupation initials in parentheses, sorted alphabetically
2. Second set of rows: Count statements for each occupation, sorted by count and then alphabetically