FROM php:7.3-cli-alpine AS work

# ----------------------------------------
# install composer
# ----------------------------------------
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /.composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
RUN composer global require hirak/prestissimo

# ----------------------------------------
# install build-dependencies
# ----------------------------------------
RUN apk add --update-cache --no-cache --virtual=.build-dependencies ${PHPIZE_DEPS}

# ----------------------------------------
# install php extensions
# ----------------------------------------
RUN pecl install ast

# ----------------------------------------
# install phan
# ----------------------------------------
RUN composer global require phan/phan


FROM php:7.3-cli-alpine

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /.composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
COPY --from=work /.composer/vendor /.composer/vendor
COPY --from=work /usr/local/lib/php/extensions /usr/local/lib/php/extensions
RUN docker-php-ext-enable ast

WORKDIR /app


ENTRYPOINT ["/.composer/vendor/phan/phan/phan"]
