#!/bin/sh

# Wait for keycloak
while ! nc -z keycloak 8080; do   
  sleep 0.1
done

# Start nginx
nginx -g 'daemon off;'