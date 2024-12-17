# Use official nginx image as the base image
FROM nginx:latest

# Copy the nginx config file
COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf

COPY ./nginx/ssl/fullchain.pem /usr/keys/fullchain.pem
COPY ./nginx/ssl/private.key.pem /usr/keys/private.key.pem

# Expose port 80
EXPOSE 80