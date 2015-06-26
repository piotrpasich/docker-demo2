
FROM phpmentors/symfony-app:php55

MAINTAINER Piotr Pasich <piotr.pasich@x-team.com>

EXPOSE 80

WORKDIR /var/app

ADD . /var/app

RUN /bin/bash app/setup