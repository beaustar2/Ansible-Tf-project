#!/bin/bash
sudo yum -y update                # Update the package repository
sudo yum -y install epel-release  # Install the Extra Packages for Enterprise Linux (EPEL) repository
sudo yum -y install ansible        # Install Ansible
sudo yum -y install git            # Install Git
sudo yum -y install httpd          # Install Apache HTTP Server
sudo systemctl start httpd         # Start the Apache service (incorrect command, should be 'sudo service httpd start')
sudo systemctl enable httpd        # Enable Apache to start on boot
ansible -m ping node1 aws.ini      # Perform an Ansible ping test to 'node1' using the inventory file 'aws.ini'
mkdir ansible-tf-repo                 # Create a directory named 'ansible-repo'
cd ansible-tf-repo                    # Change to the 'ansible-repo' directory
git clone https://github.com/CeeyIT-Solutions/ecomm-3.git  # Clone the ecomm-3 Git repository
sudo mv ecomm-3/* /var/www/html/   # Move the contents of ecomm-3 to the Apache web server directory

