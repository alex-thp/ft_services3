FROM alpine:3.11.3
RUN apk add openrc --no-cache
RUN apk add vsftpd && rc-update add vsftpd default
COPY vsftpd.conf etc/vsftpd/
RUN apk add vsftpd-doc
CMD sh

#vsftpd = commande bloquante, donner en params le fichier de configuration situé dans /etc/vsftpd/vsftpd.conf // LE METTRE EN MODE PASSIF