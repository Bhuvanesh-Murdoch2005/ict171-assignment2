# Use the official Apache image
FROM httpd:2.4

# Copy your website files to Apache's root folder
COPY . /usr/local/apache2/htdocs/

# Expose port 80 (standard web port)
EXPOSE 80
