FROM debian:bullseye

COPY tools /tools

RUN apt-get update -y && apt-get install mariadb-server -y && chmod +x tools/script.sh

ENTRYPOINT ["sh", "tools/script.sh"]