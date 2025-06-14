# Docker Environment for SQL Exercises

This directory contains a Docker setup to help you test and run the SQL exercises from HackerRank locally.

## Setup Includes

- MySQL 8.0 database server
- PHPMyAdmin for database management through a web interface
- Pre-configured tables with sample data matching HackerRank exercises

## Prerequisites

- Docker and Docker Compose installed on your system
- Basic knowledge of SQL and Docker

## Getting Started

1. Navigate to the SQL directory:
   ```
   cd /path/to/hackerrank/sql
   ```

2. Start the Docker containers:
   ```
   docker-compose up -d
   ```

3. Access the database:
   - **Via PHPMyAdmin**: Open http://localhost:8080 in your browser
     - Username: root
     - Password: root
   
   - **Via MySQL client**:
     ```
     docker exec -it hackerrank-mysql mysql -u hackerrank -phackerrank hackerrank
     ```

4. Test your SQL solutions:
   - Copy your solution from the solution.sql file
   - Paste it into the SQL tab in PHPMyAdmin or in the MySQL client
   - Execute the query and verify the results

## Database Structure

The following tables are available in the database:

- **CITY**: City information with ID, NAME, COUNTRYCODE, DISTRICT, and POPULATION
- **STATION**: Weather station data with ID, CITY, STATE, LAT_N, and LONG_W
- **OCCUPATIONS**: People and their occupations with NAME and OCCUPATION
- **TRIANGLES**: Triangle measurements with sides A, B, and C
- **STUDENTS**: Student information with ID, NAME, and MARKS
- **EMPLOYEE**: Employee data with ID, NAME, and SALARY
- **COUNTRY**: Country information with CODE, NAME, and CONTINENT

## Stopping the Environment

To stop the Docker containers:
```
docker-compose down
```

To stop and remove all data (including the database volume):
```
docker-compose down -v
```

## Troubleshooting

- If you encounter port conflicts, edit the `docker-compose.yml` file to change the port mappings
- If the database doesn't contain the expected tables, ensure the initialization scripts in the `init` directory are properly formatted