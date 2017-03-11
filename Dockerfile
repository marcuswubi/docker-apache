FROM marcuswubi/docker-ubuntu

RUN apt-get update && \
apt-get install -y apache2

EXPOSE 80

ADD apacheConfig.conf /etc/apache2/sites-enabled/000-default.conf

CMD /usr/sbin/apache2ctl -D FOREGROUND
