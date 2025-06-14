# Name of Employees

## Problem Description

Write a query that prints a list of employee names (i.e.: the name attribute) from the EMPLOYEE table in alphabetical order.

## Input Format

The EMPLOYEE table contains employee data and is described as follows:

| Column | Type    |
|--------|---------|
| ID     | INTEGER |
| NAME   | STRING  |
| SALARY | INTEGER |

where ID is the employee ID, NAME is the employee name, and SALARY is the employee monthly salary.

## Solution Approach

Use a simple SELECT statement to retrieve only the NAME column from the EMPLOYEE table, and order the results alphabetically using ORDER BY.

## Step-by-Step Explanation

1. Start with the SELECT statement to retrieve only the NAME column:
   ```sql
   SELECT NAME
   ```

2. Specify the table to query from:
   ```sql
   FROM EMPLOYEE
   ```

3. Add the ORDER BY clause to sort the names alphabetically:
   ```sql
   ORDER BY NAME ASC
   ```

4. The final query:
   ```sql
   SELECT NAME
   FROM EMPLOYEE
   ORDER BY NAME ASC
   ;
   ```

## Expected Output

The query will return a single column containing all employee names from the EMPLOYEE table, sorted in alphabetical order (A to Z).