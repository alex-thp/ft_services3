FROM alpine:3.11.3
RUN apk update && apk upgrade wget
RUN apk add nginx
RUN apk add openrc musl busybox openssh busybox-extras
COPY nginx_config/default.conf etc/nginx/conf.d/
COPY nginx_config/nginx.conf etc/nginx/
COPY script.sh .
RUN apk upgrade --update-cache --available && apk add openssl
RUN openssl req -nodes -new -x509 -keyout ./etc/nginx/server.key -out ./etc/nginx/certificate -subj "/C=FR/ST=Paris/L=Clichy/O=42/CN=localhost42.com"
RUN mkdir -p var/www/html
RUN cd /var/www/localhost/htdocs && touch index.html
RUN chmod 777 /var/www/localhost/htdocs/index.html
RUN echo "salut sur nginx" >> /var/www/localhost/htdocs/index.html
RUN adduser nginx nginx
RUN chown -R nginx:nginx /etc/nginx
EXPOSE 80 443
CMD sh script.sh
