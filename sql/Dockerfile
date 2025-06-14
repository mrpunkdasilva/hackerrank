FROM mysql:8.0

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=hackerrank
ENV MYSQL_USER=hackerrank
ENV MYSQL_PASSWORD=hackerrank

# Copy initialization scripts
COPY ./init/ /docker-entrypoint-initdb.d/

# Expose MySQL port
EXPOSE 3306

# Set healthcheck
HEALTHCHECK --interval=5s --timeout=3s --retries=3 CMD mysqladmin ping -h localhost -u root -p${MYSQL_ROOT_PASSWORD} || exit 1