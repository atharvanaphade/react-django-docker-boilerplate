#!/bin/sh

until cd /app/backend/server
do
    echo "Waiting for server volume..."
done

gunicorn %PROJECT_NAME_HERE%.wsgi --bind 0.0.0.0:8000 --workers 1 --threads 2 # Change workers according to resources available.
#./manage.py runserver 0.0.0.0:8003