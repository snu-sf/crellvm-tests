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

## Grading

```
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
