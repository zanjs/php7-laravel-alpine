FROM zanjs/php7-composer-alpine

Maintainer zanjs Manandhar <zanjs.com.np>

RUN apk --update add bash \
                     php7-mysqli \
                     php7-pdo_mysql \
                     php7-mcrypt \
                     php7-ctype \
                     php7-xml \
                     python --repository http://nl.alpinelinux.org/alpine/edge/testing/ && rm /var/cache/apk/*

RUN composer global require hirak/prestissimo

COPY config/zzz-custom.ini /etc/php/conf.d/

ENTRYPOINT ["/bin/sh", "-c"]
