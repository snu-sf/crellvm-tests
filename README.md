# Software Foundations Submissions

## Installation

```
# Django
virtualenv-3.4 env
. env/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
./manage.py migrate


# RabbitMQ
yum install rabbitmq-server


# Coq
yum groupinstall "Development Tools"

cd /etc/yum.repos.d/
wget http://download.opensuse.org/repositories/home:ocaml/CentOS_7/home:ocaml.repo
yum install opam

adduser sf
passwd sf
su sf
ssh-keygen -t rsa

opam init --comp 4.02.3
opam install coq.8.4.5
```

## Initialization

```
. env/bin/activate
rm db.sqlite3
python manage.py migrate
python manage.py createsuperuser --username sf --email ta@sf.snu.ac.kr
```

## Operation

- Run web server

        rabbitmq-server
        . env/bin/activate
        ./manage.py celery worker -E
        ./manage.py runserver

- Add assignment

        ./manage.py addassignment 01 10 2016-03-02:14 ~/skeleton.zip

- `lib/pl` contains evaluation logic. TODO: documentation required.
