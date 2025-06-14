# What Type of Triangle

## Problem Description

Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

- **Equilateral**: It's a triangle with 3 sides of equal length.
- **Isosceles**: It's a triangle with 2 sides of equal length.
- **Scalene**: It's a triangle with 3 sides of differing lengths.
- **Not A Triangle**: The given values of A, B, and C don't form a triangle.

## Input Format

The TRIANGLES table is described as follows:

| Column | Type    |
|--------|---------|
| A      | INTEGER |
| B      | INTEGER |
| C      | INTEGER |

Each row in the table denotes the lengths of each of a triangle's three sides.

## Solution Approach

Use a CASE statement to evaluate the triangle type based on the following conditions:
1. Check if the sides can form a triangle (sum of any two sides must be greater than the third side)
2. If it's a triangle, determine its type:
   - Equilateral: all three sides are equal
   - Isosceles: exactly two sides are equal
   - Scalene: no sides are equal

## Step-by-Step Explanation

1. Start with a SELECT statement using CASE to evaluate different conditions:
   ```sql
   SELECT CASE
   ```

2. First, check if the sides can form a triangle:
   ```sql
   WHEN (A + B <= C) OR (B + C <= A) OR (C + A <= B) THEN 'Not A Triangle'
   ```

3. If it's a triangle, check if it's equilateral (all sides equal):
   ```sql
   WHEN A = B AND B = C THEN 'Equilateral'
   ```

4. If it's not equilateral, check if it's isosceles (exactly two sides equal):
   ```sql
   WHEN A = B OR A = C OR B = C THEN 'Isosceles'
   ```

5. If it's neither equilateral nor isosceles, it must be scalene:
   ```sql
   ELSE 'Scalene'
   ```

6. Close the CASE statement and specify the table:
   ```sql
   END
   FROM TRIANGLES
   ```

7. The final query:
   ```sql
   SELECT CASE
              WHEN (A + B <= C) OR (B + C <= A) OR (C + A <= B) THEN 'Not A Triangle'
              WHEN A = B AND B = C THEN 'Equilateral'
              WHEN A = B OR A = C OR B = C THEN 'Isosceles'
              ELSE 'Scalene'
              END
   FROM TRIANGLES
   ;
   ```

## Expected Output

The query will return a single column with one of the following values for each row in the TRIANGLES table:
- 'Equilateral'
- 'Isosceles'
- 'Scalene'
- 'Not A Triangle'