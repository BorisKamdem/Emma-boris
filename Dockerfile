# Use the official Nginx image
FROM nginx

# Set environment variable for index path
ENV index /usr/share/nginx/html/index.html

# Download the raw index.html from GitHub and copy it to the appropriate location
RUN curl -o $index https://raw.githubusercontent.com/BorisKamdem/Emma-boris/emma/index.html

# Expose port 80
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
