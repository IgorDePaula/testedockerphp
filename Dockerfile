FROM ubuntu:latest
MAINTAINER Igor de paula <igordepaula@adminweb.com.br>

RUN apt-get update
RUN apt-get install -y apache2 php5 libapache2-mod-php5 git git-core php5-mysql

RUN echo '<?php phpinfo();' > /var/www/phpinfo.php

RUN cd /var/www/; git clone https://github.com/igordepaula/teste-docker-php.git testedockerphp

EXPOSE 80
