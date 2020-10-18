FROM zaioll/debian:stretch

LABEL maintainer "Láyro Chrystofer <zaioll@protonmail.com>"

RUN apt-get update && apt-get install -y nginx apache2-utils

RUN \
    mkdir -p /run/php \
    && chown root:www-data -R /var/run/php && chmod 775 /run/php

EXPOSE 80 443
STOPSIGNAL SIGTERM
CMD nginx -g "daemon off;"
