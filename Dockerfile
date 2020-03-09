FROM openjdk:8-alpine

LABEL MAINTAINER="Fredy Samuel"

RUN apk add --update --no-cache; \
    apk add --no-cache git curl jq python3 python3-dev bash openssh; \
    pip3 install --upgrade pip; \
    apk add --no-cache --virtual .build-deps gcc musl-dev alpine-sdk libffi-dev openssl-dev; \
    pip3 install ansible; \
    pip3 install hvac; \
    pip3 install hvac[parser]; \
    pip3 install python-consul; \
    pip3 install yamllint; \
    apk del .build-deps