# Use nginx to serve static files
FROM nginx:alpine

# Set working directory in nginx html folder
WORKDIR /usr/share/nginx/html

# Copy all files from your repo to nginx
COPY . .

# Expose port 80
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
