FROM nginx:stable-alpine

RUN mkdir -p /var/www/html/public

ADD nginx/default.conf /etc/nginx/conf.d/default.conf


RUN sed -i 's/user www-data/user laravel/g' /etc/nginx/nginx.conf

RUN adduser -g laravel -s /bin/sh -D laravel