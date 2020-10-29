FROM alpine:3.11.3
RUN apk update wget
RUN apk add openrc --no-cache
RUN apk add grafana --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing
CMD /usr/sbin/grafana-server --config=/usr/share/grafana/conf/defaults.ini --homepath=/usr/share/grafana