php-fpm7
mysql -h mysql -u root -ppassword < create_db.sql
while [ $? == 1 ]; do # $? = last instruction
	echo "trying to connect to mySQL"
	sleep 2
	mysql -h mysql -u root -ppassword < create_db.sql
done
# while (mysql -h mysql -u root -ppassword < create_db.sql != 0); do
# mysql -h mysql -u root -ppassword < create_db.sql
# done
mkdir run/nginx && touch run/nginx/nginx.pid && nginx -g 'daemon off;'