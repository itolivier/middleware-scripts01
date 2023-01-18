
#!/bin/bash

# Description: This package will install the apache web server on your centOS 7 server

#Author: Olivier
#Date:   Oct. 21,2022

echo "Starting installation. This may take a few minutes..."
yum update -y
yum install -y httpd
systemctl start httpd
sudo systemctl enable httpd
systemctl status httpd
 firewall-cmd ––permanent ––add-port=80/tcp
 firewall-cmd ––permanent ––add-port=443/tcp
 firewall-cmd ––reload
 
 if [ $? -eq 0 ]
 then
echo "Installation complete"
 echo "apache successfully installed"
 else
 echo "Installation failed"
 echo "Try again"
 fi