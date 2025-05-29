# Use official PHP with Apache image
FROM php:8.1-apache

# Copy all your project files into the Apache web root directory
COPY . /var/www/html/

# Expose port 80 (HTTP)
EXPOSE 80
