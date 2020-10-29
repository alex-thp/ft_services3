mkdir -p /var/run
touch /var/run/utmp
telegraf -config=/etc/telegraf.conf