FROM debian:bullseye

COPY tools /tools

COPY conf/db.conf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN apt-get update -y && apt-get install mariadb-server -y && chmod +x tools/script.sh

ENTRYPOINT ["sh", "tools/script.sh"]