#!/bin/bash

echo "First we are going to update the system."
sudo apt-get update

echo "We are going to be installing Samba for file servers."
sudo apt-get install samba

echo "Using 'sudo nano /etc/samba/smb.conf' to adjust users settings."

echo "Adding User to Samba."
echo "Use 'sudo smbpasswd -a 'user'."

echo "Configure the /export directory."
sudo mkdir /export
echo "Use 'sudo chown name.users /export'."
sudo chmod u=rwx,g=rwx,o-rwx /export

echo "Check that Samba is running."
sudo smbclient -L localhost -U%

#END 



