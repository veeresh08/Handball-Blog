# Use the official nginx image as the base image
FROM nginx:latest

# Copy all files from the my-files directory to the nginx default public directory
COPY . /usr/share/nginx/html/

# Copy the app.yaml file to the root directory
COPY app.yaml /app.yaml

# Expose port 8080 to listen for incoming requests
EXPOSE 8080

# Start nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
