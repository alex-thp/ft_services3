FROM alpine:3.11.3
RUN mkdir -p /usr/share/webapps/
RUN apk update && apk upgrade wget
RUN wget http://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz && rm latest.tar.gz
RUN apk add --update nginx
RUN mv wordpress /var/www/html
RUN apk add openrc --no-cache
COPY nginx.conf etc/nginx/conf.d/
RUN rm etc/nginx/conf.d/default.conf
COPY script.sh .
COPY create_db.sql .
RUN apk -f add php7-fpm php7-mbstring php7-session php7-mysqli php7-gettext \
php7-pdo php7-zip php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc \
php7-pdo_mysql php7-pdo_sqlite php7-xmlreader php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib \
php7-curl php7-ctype php7-mcrypt php7-soap php7-openssl php7-gmp php7-pdo_odbc php7-json php7-dom
RUN apk add mysql mysql-client
ENTRYPOINT sh /script.sh