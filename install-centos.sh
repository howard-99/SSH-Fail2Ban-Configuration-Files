#wget https://ssh.goldenconnect56.ml/CurlServer/ssh-fail2ban.sh && sudo chmod 755 ssh-fail2ban.sh ; sudo ./ssh-fail2ban.sh
#Change SSH port + config Fail2Ban

#ask ssh port


#SSH

#/etc/ssh/sshd_config
#edit port to 0
 
sudo sed -i '/^#Port 22/s/^#//' /etc/ssh/sshd_config
sudo sed -i 's/22/0/g' /etc/ssh/sshd_config
 
yum install policycoreutils -y
yum install policycoreutils-python-utils -y 
yum install policycoreutils-python -y
 
semanage port -a -t ssh_port_t -p tcp 0
semanage port -m -t ssh_port_t -p tcp 0
 
systemctl restart sshd
 
ss -tlpn| grep ssh
 
sudo systemctl start firewalld
 
sudo firewall-cmd --add-port=0/tcp --permanent
sudo firewall-cmd --remove-service=ssh --permanent
 
sudo systemctl stop firewalld
sudo systemctl disable firewalld
  
#Fail2Ban
sudo yum install epel-release -y
sudo yum install fail2ban -y
sudo systemctl start fail2ban
sudo systemctl enable fail2ban

cd /etc/fail2ban/
wget -O jail.conf https://raw.githubusercontent.com/howard-99/SSH-Fail2Ban-Configuration-Files/main/jail.conf
wget -O jail.local https://raw.githubusercontent.com/howard-99/SSH-Fail2Ban-Configuration-Files/main/jail.local

cd /root/

sudo systemctl restart fail2ban
sudo iptables -L
