# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom configuration file (optional if you want to configure Nginx)
# COPY nginx.conf /etc/nginx/nginx.conf

# Copy the college.html file into the Nginx HTML directory
COPY college.html /usr/share/nginx/html/index.html

# Expose port 80 to access the web server
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
