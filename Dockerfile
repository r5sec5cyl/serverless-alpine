FROM node:alpine
RUN apk update
RUN apk upgrade
RUN apk add --no-cache --update \
        python3 \
        groff \
        less \
        mailcap \
        curl \
        unzip \
        git \
        bash \
        && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    npm install -g serverless && \
    npm install -g serverless-python-requirements && \
    pip3 install --upgrade awscli && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
