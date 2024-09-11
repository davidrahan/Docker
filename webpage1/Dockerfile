# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Remove the default Nginx configuration file if necessary
# Uncomment the next line if you need to remove the default config
# RUN rm /etc/nginx/conf.d/default.conf

# Install additional dependencies if needed
# For example, to install `curl` and `vim`, you can use:
RUN apk update && \
    apk add --no-cache curl vim

# Copy the custom HTML file into the Nginx HTML directory
COPY college_admission.html /usr/share/nginx/html/index.html

# Expose port 80 to access the web server
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]