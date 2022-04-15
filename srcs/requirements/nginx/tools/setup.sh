apt-get update
apt-get install -y nginx
chmod 777 /etc/nginx/nginx.conf
cp ./tools/default /etc/nginx/sites-available/
cp ./tools/localhost.crt /root/
cp ./tools/localhost.key /root/
echo "daemon off;" >> /etc/nginx/nginx.conf
