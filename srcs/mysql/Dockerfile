FROM alpine:3.11.3
RUN apk add --update mysql mysql-client
RUN mkdir -p auth_pam_tool_dir/auth_pam_tool
COPY my.cnf /etc
COPY my.cnf /etc/mysql
RUN mkdir -p /run/mysqld
RUN mysql_install_db
COPY scriptmysql.sh .
COPY admin.sql .
CMD sh scriptmysql.sh