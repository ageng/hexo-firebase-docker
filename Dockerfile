FROM node:lts-alpine3.13

# labels
LABEL maintainer="me@ageng.my.id"

# install hugo and firebase
RUN set -x && \
    apk add --update --upgrade --no-cache wget ca-certificates && \
    update-ca-certificates && \
    apk del --purge wget && \
    node -v && \
    npm -v && \
    npm install -g firebase-tools@latest --unsafe-perm && \
    npm install -g hexo
