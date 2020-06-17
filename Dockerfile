FROM composer:2.0 as composer

WORKDIR /usr/local/src/

COPY composer.json /usr/local/src/

RUN composer update --ignore-platform-reqs --optimize-autoloader \
    --no-plugins --no-scripts --prefer-dist --no-dev

RUN ls -ll

FROM php:7.4-cli

WORKDIR /usr/src/myapp

COPY ./bin /usr/src/myapp/bin
COPY --from=composer /usr/local/src/vendor /usr/src/myapp/vendor

RUN ln -s /usr/src/myapp/bin/test /usr/local/bin/test

RUN chmod +x /usr/src/myapp/bin/test

CMD [ "php" , "-v" ]