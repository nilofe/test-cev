#!/bin/bash

# Start NGINX in the background
nginx -g 'daemon off;' &

# Run Certbot to obtain or renew certificates
certbot --nginx --non-interactive --agree-tos --email nilofelieo@gmail.com --domains az.realstw.com,www.az.realstw.com

# Keep the script running
tail -f /dev/null
