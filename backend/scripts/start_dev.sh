#!/bin/bash

python3 manage.py collectstatic --no-input
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py create_default_user
python3 manage.py create_demo_users
python3 manage.py create_posts
python3 manage.py runserver 0.0.0.0:8000
