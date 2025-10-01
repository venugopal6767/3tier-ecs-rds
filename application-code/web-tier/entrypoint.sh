#!/bin/sh
# Replace APP_ILB_HOST env variable in nginx.conf if needed
envsubst '$APP_ILB_HOST' < /etc/nginx/nginx.conf > /etc/nginx/nginx.conf.tmp
mv /etc/nginx/nginx.conf.tmp /etc/nginx/nginx.conf

# Start Nginx in foreground
nginx -g 'daemon off;'
