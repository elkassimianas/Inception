apt-get update
apt-get install -y nginx
chmod 777 /etc/nginx/nginx.conf
echo "daemon off;" >> /etc/nginx/nginx.conf
cp ./default /etc/nginx/sites-available/

