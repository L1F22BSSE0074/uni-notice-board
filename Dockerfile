# Use a lightweight nginx image for serving static files
FROM nginx:alpine

# Set working directory in container
WORKDIR /usr/share/nginx/html

# Copy all static website files into nginx html folder
COPY . .

# Expose port 80
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
