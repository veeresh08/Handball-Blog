# Use the official nginx image as the base image
FROM nginx:latest
<<<<<<< HEAD

# Copy all files from the my-files directory to the nginx default public directory
COPY . /usr/share/nginx/html/

# Copy the app.yaml file to the root directory
COPY app.yaml /app.yaml

# Expose port 8080 to listen for incoming requests
#EXPOSE 8080

# Start nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
=======
COPY . /usr/share/nginx/html
ENTRYPOINT ["nginx", "-g", "daemon off;"]
>>>>>>> c3cfbc0a5090c9cb200cdc46066a92a5e73cd515
