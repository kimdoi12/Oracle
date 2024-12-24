#!/bin/bash

cp /vagrant/oracle-xe-11.2.0-1.0.x86_64.rpm.zip .


apt update

sudo apt -y install alien zip net-tools

unzip oracle*.zip

cd Disk1

alien --scripts -d oracle*

dpkg --install oracle*.deb

cat <<EOF | sudo tee oracle-xe
ORACLE_HTTP_PORT=8080
ORACLE_LISTENER_PORT=1521
ORACLE_PASSWORD=system
ORACLE_CONFIRM_PASSWORD=system
ORACLE_DBENABLE=TRUE
EOF

#sudo /etc/init.d/oracle-xe configure <<EOF
#8080
#1521
#system
#system
#y
#EOF

sudo /etc/init.d/oracle-xe configure responseFile=oracle-xe

