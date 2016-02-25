#!/usr/bin/env bash

virtualenv-3.4 env
. env/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

./manage.py migrate
