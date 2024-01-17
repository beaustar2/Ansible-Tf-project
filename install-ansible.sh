#!/bin/bash
sudo yum update -y
sudo yum -y install epel-release
sudo yum -y install ansible
sudo yum -y install git
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
ansible -m ping node1 aws.ini 
mkdir ansible repo
cd ansible repo
git clone https://github.com/CeeyIT-Solutions/ecomm-3.git
sudo mv ecomm-3/* /var/www/html/ 