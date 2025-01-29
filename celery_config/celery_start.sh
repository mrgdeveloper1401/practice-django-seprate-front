#!/bin/sh

celery -A celery_vary_academy.dj_celery worker -l INFO

exec "$@"