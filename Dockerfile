
FROM phpmentors/symfony-app:php55

MAINTAINER Piotr Pasich <piotr.pasich@x-team.com>

EXPOSE 80

WORKDIR /var/app

ADD . /var/app
ADD docker/000-default.conf /etc/apache2/sites-available/000-default.conf

RUN /bin/bash /var/app/app/setup