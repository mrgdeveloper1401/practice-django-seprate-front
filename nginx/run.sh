#!/bin/sh

# envsubst

nginx -g "daemon off;"

exec "$@"
