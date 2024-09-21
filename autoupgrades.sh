##############################################################################################################################################################################
# Title: Auto-upgrades
# Description: This script will install unattended-upgrades package and configure it to automatically install security updates.
##############################################################################################################################################################################

# install unattended-upgrades

sudo apt-get install unattended-upgrades

# editing configuration file

sudo vim /etc/apt/apt.conf.d/50unattended-upgrades

# Enable the service for unattended upgrades by running the following command

sudo dpkg-reconfigure --priority=low unattended-upgrades

# To control how often updates are checked and installed, you can modify the file /etc/apt/apt.conf.d/20auto-upgrades:

sudo vim /etc/apt/apt.conf.d/20auto-upgrades

# APT::Periodic::Update-Package-Lists "1";
# APT::Periodic::Unattended-Upgrade "1";

# To check the status of the unattended-upgrades service, run the following command:

sudo systemctl status unattended-upgrades

# To check the logs of the unattended-upgrades service, run the following command:

sudo less /var/log/unattended-upgrades/unattended-upgrades.log
