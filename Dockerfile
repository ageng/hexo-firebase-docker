FROM public.ecr.aws/docker/library/node:lts-alpine3.16

# labels
LABEL maintainer="mail@seni.one"

# install hugo and firebase
RUN set -x && \
    apk add --update --upgrade --no-cache wget ca-certificates && \
    update-ca-certificates && \
    apk del --purge wget && \
    node -v && \
    npm -v && \
    npm install -g firebase-tools@latest --unsafe-perm && \
    npm install -g hexo
