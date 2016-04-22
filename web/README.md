# LLVMBerry Web Server

## Installation

```
# Django
yum groupinstall -y "Development Tools"
yum install -y python34-devel
curl https://bootstrap.pypa.io/get-pip.py | python3.4
pip3 install --upgrade pip
pip3 install --upgrade virtualenv
virtualenv -p python3 env
. env/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
./manage.py migrate


# RabbitMQ
yum install epel-release
yum install rabbitmq-server


# Centos 7

firewall-cmd --zone=public --add-port=8000/tcp


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
