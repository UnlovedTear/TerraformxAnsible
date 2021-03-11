PASS="Passw0rd"
#123
exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>/var/log/cloud-config-detail.log 2>&1
## Update System
sudo apt update
sudo apt upgrade -y
## Change Root password
sudo sh  "echo root:$PASS | chpasswd"
## Change Hostname
#sudo hostnamectl set-hostname ansiablesrv
## Install utilitaries
#sudo apt-get install ansible -y
#sudo apt-get install apache2 -y
#sudo apt install postgresql postgresql-contrib -y
#sudo apt install php-gd php-pgsql php-xmlrpc php-xml php-curl -y
#Creating a database with the name ansible
#sudo -i -u postgres
#psql
#createuser -SRDP ansible
#createdb -O ansible -EUTF8 ansibledb
#\q
#Getting Mahara.gz
#cd ~
#wget https://launchpad.net/mahara/19.10/19.10.2/+download/mahara-19.10.2.tar.gz
#tar xzvf mahara-19.10.2.tar.gz
#sudo cp -a mahara-19.10.2/. /var/www/html/
#Creating the Dataroot Directory

