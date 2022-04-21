if [ ! -d "/var/lib/mysql/wordpress" ]; then 
    service mysql start
        mysql -u root -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
        mysql -u root -e "CREATE DATABASE $WORDPRESS_DB_NAME;"
        mysql -u root -e "GRANT ALL PRIVILEGES ON $WORDPRESS_DB_NAME.* TO '$MYSQL_USER'@'%';"
        mysql -u root -e "FLUSH PRIVILEGES;"
        mysql -u $MYSQL_USER --password=$MYSQL_PASSWORD $MYSQL_DATABASE < ./conf/wp.sql 
        mysqladmin --user=root password $MYSQL_ROOT_PASSWORD
fi
    mysqld_safe