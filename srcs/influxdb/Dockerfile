FROM alpine:3.11.3
RUN apk add wget
RUN wget https://repos.influxdata.com/influxdb.key
RUN apk add influxdb
RUN apk update influxdb
RUN apk upgrade influxdb
RUN apk add openrc --no-cache
RUN export INFLUXDB_CONFIG_PATH=/etc/influxdb.conf
COPY entrypoint.sh .
COPY influxdb.conf /etc/influxdb.conf
CMD sh entrypoint.sh