#!/bin/bash

service mariadb start

#listen to any adress
sed -i 's/127.0.0.1/0.0.0.0/' etc/mysql/mariadb.conf.d/50-server.cnf


SQL_FILE="/wordpress.sql"

cat << EOF > $SQL_FILE
CREATE DATABASE IF NOT EXISTS $DB_NAME;
CREATE USER IF NOT EXISTS $DB_USER@'%' IDENTIFIED BY '$DB_PASSWORD';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO $DB_USER@'%';
FLUSH PRIVILEGES;
EOF

mysql < $SQL_FILE
# rm $SQL_FILE

sleep 5

#restart to apply
service mariadb stop
mysqld