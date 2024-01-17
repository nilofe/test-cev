FROM nginx:1.25.3-alpine

# Install Certbot and any necessary dependencies
RUN apk add python3 python3-dev py3-pip 
RUN pip3 install certbot-nginx
RUN rm -rf /usr/share/nginx/html/*

COPY  default.conf  /etc/nginx/conf.d/default.conf
COPY  script.sh  /script.sh
# Create a directory to store Certbot data
RUN mkdir -p /etc/letsencrypt 
RUN chmod +x /script.sh
# Expose HTTP and HTTPS ports
EXPOSE 80 443

# Set the entrypoint script
ENTRYPOINT ["/bin/sh", "/script.sh"]
