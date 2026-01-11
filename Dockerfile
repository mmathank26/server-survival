## Container image to run the application on a lightweight web server

FROM nginx:alpine

# Remove the default nginx website/files
RUN rm -rf /usr/share/nginx/html/*

# Copy game files into nginx web root
COPY . /usr/share/nginx/html

# Expose port 80 of container
EXPOSE 80
 
# Start nginx when the container launches
CMD ["nginx", "-g", "daemon off;"] 


 
