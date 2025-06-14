# Employee Salaries

## Problem Description

Write a query that prints a list of employee names (i.e.: the name attribute) for employees in the EMPLOYEE table, whose salary is greater than $2000 per month and who have been employees for less than 10 months. Sort your result by ascending employee_id.

## Input Format

The EMPLOYEE table contains employee data and is described as follows:

| Column      | Type    |
|-------------|---------|
| EMPLOYEE_ID | INTEGER |
| NAME        | STRING  |
| MONTHS      | INTEGER |
| SALARY      | INTEGER |

where EMPLOYEE_ID is the employee ID, NAME is the employee name, MONTHS is the total number of months the employee has been working for the company, and SALARY is the employee's monthly salary.

## Solution Approach

Use a SELECT statement to retrieve the NAME column from the EMPLOYEE table, with a WHERE clause to filter for employees with:
1. Salary greater than $2000
2. Less than 10 months of employment

Then, order the results by EMPLOYEE_ID in ascending order.

## Step-by-Step Explanation

1. Start with the SELECT statement to retrieve only the NAME column:
   ```sql
   SELECT NAME
   ```

2. Specify the table to query from:
   ```sql
   FROM EMPLOYEE
   ```

3. Add the WHERE clause with the required conditions:
   ```sql
   WHERE SALARY > 2000
     AND MONTHS < 10
   ```

4. Add the ORDER BY clause to sort by employee ID:
   ```sql
   ORDER BY EMPLOYEE_ID ASC
   ```

5. The final query:
   ```sql
   SELECT NAME
   FROM EMPLOYEE
   WHERE SALARY > 2000
     AND MONTHS < 10
   ORDER BY EMPLOYEE_ID ASC
   ;
   ```

## Expected Output

The query will return a single column containing the names of employees who earn more than $2000 per month and have been employed for less than 10 months, sorted by their employee ID in ascending order.