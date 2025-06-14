# Higher Than 75 Marks

## Problem Description

Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

## Input Format

The STUDENTS table is described as follows:

| Column | Type    |
|--------|---------|
| ID     | INTEGER |
| NAME   | STRING  |
| MARKS  | INTEGER |

The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.

## Solution Approach

1. Use a SELECT statement to retrieve the NAME column from the STUDENTS table
2. Apply a WHERE clause to filter for students with marks greater than 75
3. Order the results by:
   - The last three characters of each name (using the RIGHT function)
   - Student ID as a secondary sort criterion

## Step-by-Step Explanation

1. Start with the SELECT statement to retrieve the NAME column:
   ```sql
   SELECT NAME
   ```

2. Specify the table to query from:
   ```sql
   FROM STUDENTS
   ```

3. Add the WHERE clause to filter for students with marks greater than 75:
   ```sql
   WHERE MARKS > 75
   ```

4. Add the ORDER BY clause with two sort criteria:
   - First, sort by the last three characters of each name using the RIGHT function
   - Then, sort by ID in ascending order
   ```sql
   ORDER BY RIGHT(NAME, 3), ID
   ```

5. The final query:
   ```sql
   SELECT NAME
   FROM STUDENTS
   WHERE MARKS > 75
   ORDER BY RIGHT(NAME, 3), ID
   ;
   ```

## Expected Output

The query will return a single column containing the names of students who scored more than 75 marks, ordered by the last three characters of their names. If multiple students have names ending with the same three characters, they will be sorted by their ID in ascending order.