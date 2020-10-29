FROM alpine:3.11.3
RUN apk update wget
RUN apk add openrc --no-cache
RUN apk add telegraf --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing
COPY telegraf.conf /etc
COPY script.sh .
CMD sh script.sh