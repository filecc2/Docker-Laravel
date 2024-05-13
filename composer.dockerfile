FROM composer:latest

ENV COMPOSERUSER=laravel
ENV COMPOSERGROUP=laravel

RUN adduser -g ${COMPOSERGROUP} -s /bin/sh -D ${COMPOSERUSER}