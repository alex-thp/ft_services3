minikube start --driver=virtualbox
eval $(minikube docker-env)
sed -e "s/mini-ip/$(minikube ip)/" srcs/telegraf/safe_config.conf>srcs/telegraf/telegraf.conf
minikube addons enable metallb
docker build -t image-telegraf srcs/telegraf
docker build -t image-nginx srcs/nginx
docker build -t image-influxdb srcs/influxdb
docker build -t image-grafana srcs/grafana
docker build -t image-phpmyadmin srcs/phpmyadmin
docker build -t image-wordpress srcs/wordpress
docker build -t image-mysql srcs/mysql
kubectl apply -f srcs/metalLB.yaml
kubectl apply -f srcs/nginx/nginx.yaml
kubectl apply -f srcs/mysql/mysql.yaml
kubectl apply -f srcs/phpmyadmin/phpmyadmin.yaml
kubectl apply -f srcs/wordpress/wordpress.yaml
kubectl apply -f srcs/influxdb/influxdb.yaml
kubectl apply -f srcs/telegraf/telegraf.yaml
kubectl apply -f srcs/grafana/grafana.yaml
rm srcs/telegraf/telegraf.conf
minikube dashboard