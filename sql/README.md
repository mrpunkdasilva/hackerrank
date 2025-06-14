# HackerRank SQL Solutions

This folder contains solutions for HackerRank SQL challenges, with detailed explanations for each problem.

## Categories

- **basic/** - Solutions for basic SQL challenges, including SELECT queries, filtering, and aggregate functions
  - Each challenge includes a detailed README with step-by-step explanations in English

## Learning Features

- **Comprehensive Documentation**: Each solution includes a detailed README with:
  - Problem description
  - Table structure
  - Step-by-step solution approach
  - Explanation of SQL concepts used
  - Expected output

- **Educational Structure**: Solutions are organized to help learners understand SQL concepts progressively

## Technologies Used

The solutions were developed using standard SQL, compatible with database systems supported by HackerRank (MySQL, MS SQL Server, Oracle).

## File Structure

Each challenge is organized in its own folder, containing:
- A `README.md` file with detailed problem explanation and solution approach
- A `solution.sql` file with the implemented SQL code

## Docker Environment

This repository includes a Docker setup to help you test and run the SQL exercises locally:

- MySQL 8.0 database server with pre-configured tables
- PHPMyAdmin for easy database management through a web interface
- Sample data matching HackerRank exercises

### Quick Start

1. Start the Docker containers:
   ```
   docker compose up -d
   ```

2. Access PHPMyAdmin at http://localhost:8080 (username: root, password: root)

3. Test your SQL solutions in the web interface
