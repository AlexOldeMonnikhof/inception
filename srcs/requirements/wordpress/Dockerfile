FROM debian:bullseye

RUN apt-get update -y && apt-get install -y php7.4 php7.4-fpm wget php7.4-mysqli

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar  \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

COPY tools/wp.sh /tmp/wp.sh

CMD ["bash", "/tmp/wp.sh"]