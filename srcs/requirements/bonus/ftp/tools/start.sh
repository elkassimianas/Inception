# create user
adduser --disabled-password --gecos "" ${FTP_USER}
echo "${FTP_USER}:${FTP_PASS}" | chpasswd

service vsftpd start
service vsftpd stop

chown -R ${FTP_USER}:${FTP_USER} /home/${FTP_USER}
# start ftp daemon
vsftpd