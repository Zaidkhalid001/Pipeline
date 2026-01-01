# Use the lightweight Nginx Alpine image
FROM nginx:alpine

# Set the working directory to Nginx html directory
WORKDIR /usr/share/nginx/html

# Remove default nginx static assets
RUN rm -rf ./*

# Copy your portfolio index.html to the container
# If you have images or CSS folders, you can use 'COPY . .' instead
COPY index.html .

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
