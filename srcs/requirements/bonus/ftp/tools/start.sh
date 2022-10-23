useradd -m ael-kass1
echo ael-kass1:ael-kass1 | chpasswd

service vsftpd start
service vsftpd stop

chown -R ael-kass1:ael-kass1 /home/ael-kass1
# start ftp daemon
vsftpd