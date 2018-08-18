ARG BASE_IMAGE_TAG

FROM anaxexperience/php:${BASE_IMAGE_TAG}

ARG WEBGRIND_VER

# Actualize confih.php.tpl when updating version.
ENV WEBGRIND_VER="${WEBGRIND_VER}" \
    WEBGRIND_ROOT="${APP_ROOT}/vendor/jokkedk/webgrind" \
    PHP_ERROR_REPORTING="E_ALL & ~E_NOTICE & ~E_STRICT & ~E_DEPRECATED"

USER root

RUN set -ex; \
    \
    apk add --update --no-cache --virtual .webgrind-rundeps graphviz python3; \
    apk add --update --no-cache --virtual .build-deps g++; \
    \
    ln -s /usr/bin/python3 /usr/bin/python; \
    su-exec anaxexp composer require "jokkedk/webgrind:^${WEBGRIND_VER}"; \
    cd "${WEBGRIND_ROOT}"; \
    make; \
    \
    apk del --purge .build-deps; \
    su-exec anaxexp composer clear-cache; \
    rm -rf /var/cache/apk/*

USER anaxexp

WORKDIR "${WEBGRIND_ROOT}"

COPY templates /etc/gotpl/
COPY init /docker-entrypoint-init.d/
COPY actions /usr/local/bin/

EXPOSE 8080

CMD ["php", "-S", "0.0.0.0:8080", "index.php"]