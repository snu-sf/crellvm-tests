# Software Foundations Submissions

## Action Items

- `scripts/install.sh`

- `scripts/reset-db.sh`

- `./manage.py addassignment 01 10 2016-03-02:14 ~/skeleton.zip`

- Run server

        rabbitmq-server
        . env/bin/activate
        ./manage.py celery worker -E
        ./manage.py runserver
