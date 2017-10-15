FROM node:alpine
RUN apk update
RUN apk upgrade
RUN apk add --no-cache --update \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        curl \
        unzip \
        git \
        && \
    npm install -g serverless && \
    pip install --upgrade awscli && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
