#!/usr/bin/env bash

. env/bin/activate
rm db.sqlite3
python manage.py migrate
python manage.py createsuperuser --username sf --email ta@sf.snu.ac.kr
