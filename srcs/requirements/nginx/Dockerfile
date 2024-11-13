FROM debian:bullseye

COPY conf/default.conf /etc/nginx/conf.d/default.conf

RUN apt-get update -y && apt-get install -y nginx openssl

#you can give anything with subject option. common fields:
#C (country), ST (state), O (orginization), CN (common name)
#file names and extensions can be anything. common = sslkey.key & sslcrt.crt
RUN mkdir -p keys && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj "/CN=test.com/C=MA/ST=KHOURIBGA/O=1337/" \
    -keyout /keys/sslkey.key -out /keys/sslcrt.crt

CMD ["nginx", "-g", "daemon off;"]