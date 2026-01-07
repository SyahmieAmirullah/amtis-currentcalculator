FROM php:8.2-apache

# Enable Apache rewrite (optional but common)
RUN a2enmod rewrite

# Copy project files into Apache web root
COPY . /var/www/html/

# Set correct permissions
RUN chown -R www-data:www-data /var/www/html
