#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT sap_cpq_and_salesfo_49141.wsgi:application
