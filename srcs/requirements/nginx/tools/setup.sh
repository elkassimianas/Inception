apt-get update
apt-get install -y nginx
chmod 777 /etc/nginx/nginx.conf
cp ./conf/default /etc/nginx/sites-available/
cp ./conf/localhost.crt /root/
cp ./conf/localhost.key /root/
echo "daemon off;" >> /etc/nginx/nginx.conf
