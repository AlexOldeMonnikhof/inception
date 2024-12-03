FROM debian:bullseye

RUN apt-get update -y && apt-get install -y nginx openssl vim

# #you can give anything with subject option. common fields:
# #C (country), ST (state), O (orginization), CN (common name)
# #file names and extensions can be anything. common = sslkey.key & sslcrt.crt
RUN mkdir -p /etc/nginx/ssl && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
        -subj "/CN=nginx/C=MA/ST=KHOURIBGA/O=1337/" \
        -keyout /etc/nginx/ssl/sslkey.key -out /etc/nginx/ssl/sslcrt.crt
 
COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]