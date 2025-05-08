#!/bin/bash

# Hostname
hostnamectl set-hostname fileserver

# Install and start SSH
dnf install -y openssh-server
systemctl enable sshd
systemctl start sshd

# Create user groups
groupadd sales
groupadd hr

# Add users
useradd -m -G sales alice
echo "alice:password123" | chpasswd

useradd -m -G hr bob
echo "bob:password123" | chpasswd

# Create shared folders
mkdir -p /srv/sales /srv/hr
chown root:sales /srv/sales
chmod 770 /srv/sales
chown root:hr /srv/hr
chmod 770 /srv/hr

# Enable SSH through firewall
firewall-cmd --permanent --add-service=ssh
firewall-cmd --reload

echo "Server setup complete."
