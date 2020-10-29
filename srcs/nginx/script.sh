chown -R nginx:nginx /usr/share/nginx/html
chmod -R 777 /usr/share/nginx/html
mkdir run/nginx && touch run/nginx/nginx.pid && nginx -g 'daemon off;'
#tail /dev/random