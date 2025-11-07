# Use official Nginx lightweight image
FROM nginx:alpine

# Remove default Nginx web content
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file to the Nginx web directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 to access the website
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
