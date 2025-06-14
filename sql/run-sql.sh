#!/bin/bash

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
  echo "Docker is not running. Please start Docker and try again."
  exit 1
fi

# Check if the container is running
if ! docker ps | grep -q "hackerrank-mysql"; then
  echo "MySQL container is not running. Starting Docker Compose..."
  docker-compose up -d
  
  # Wait for MySQL to be ready
  echo "Waiting for MySQL to be ready..."
  sleep 10
fi

# Check if a file was provided
if [ -z "$1" ]; then
  echo "Usage: ./run-sql.sh path/to/solution.sql"
  exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
  echo "File not found: $1"
  exit 1
fi

echo "Running SQL query from $1..."
echo "----------------------------------------"

# Execute the SQL file
docker exec -i hackerrank-mysql mysql -u hackerrank -phackerrank hackerrank < "$1"

echo "----------------------------------------"
echo "Query execution completed."