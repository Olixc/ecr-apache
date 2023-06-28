# Base Image
FROM ubuntu:latest

# Install Apache2
RUN apt-get update && apt-get install -y apache2

# Copy site files to container
COPY /var/www/ecr-apache /var/www/html

# Expose Port 80 for apache
EXPOSE 80

# Start apache service
CMD ["apache2ctl", "-D", "FOREGROUND"]
