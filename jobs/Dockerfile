FROM nginx:1.25.3-alpine

# Install Certbot and any necessary dependencies
RUN apk --no-cache add certbot python3-certbot-nginx

RUN rm -rf /usr/share/nginx/html/*

COPY  ./default.conf  /etc/nginx/conf.d/default.conf
COPY entrypoint.sh /entrypoint.sh
# Create a directory to store Certbot data
RUN mkdir -p /etc/letsencrypt ; chmod +x /entrypoint.sh

# Expose HTTP and HTTPS ports
EXPOSE 80 443

# Set the entrypoint script
ENTRYPOINT ["/entrypoint.sh"]
