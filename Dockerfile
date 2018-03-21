FROM joyent/webconsole-node:0.0.1

RUN apk update \
    && apk add --update curl bash build-base python  \
    && apk upgrade \
    && rm -rf /var/cache/apk/*

# Setup the Node.js app
COPY app /opt/app
WORKDIR /opt/app/
RUN yarn
