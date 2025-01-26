#!/bin/sh

# envsubst

nginx -g "daemon off;"

cat /etc/nginx/conf.d/default.conf

exec "$@"
