#!/bin/sh

gunicorn celery_vary_academy.wsgi -b 0.0.0.0:8000

exec "$@"
