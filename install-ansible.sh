#!/bin/bash
sudo yum update -y
sudo yum -y install epel-release
sudo yum -y install ansible
sudo yum -y install git
sudo yum install -y httpd
sudo service start httpd
sudo systemctl enable httpd
mkdir ansible repo
cd ansible repo
ansible -m ping node1 aws.ini
git clone https://github.com/CeeyIT-Solutions/ecomm-3.git
sudo mv ecomm-3/* /var/www/html/
ansible-playbook setup-ecomm.yaml -i aws.ini 