#
# PHPers - Docker presentation
#

FROM phpmentors/symfony-app:php55

EXPOSE 80

MAINTAINER Piotr Pasich <piotr.pasich@x-team.com>

WORKDIR /var/app
ADD . /var/app/

ADD docker/000-default.conf /etc/apache2/sites-available/000-default.conf

RUN /bin/bash /var/app/app/setup