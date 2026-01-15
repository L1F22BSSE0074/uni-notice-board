# Use nginx to serve static files
FROM nginx:alpine

# Copy ONLY your static website files to nginx html folder
# Replace 'dist/' with the folder where your index.html is actually located
COPY ./dist/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
