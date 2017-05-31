#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
sudo pip install -U awscli
sudo pip install virtualenv

sudo mkdir -p /srv/codedeploydemo

if [ ! -d /srv/codedeploydemo/venv ]; then
  sudo virtualenv /srv/codedeploydemo/venv
fi

# Nginx is now installed as part of the base image
# checkApt() {
#   echo "Wait for APT to finishing being locked before continuing"
#   while sudo fuser /var/lib/dpkg/lock >/dev/null 2>&1; do
#      echo "apt is locked..."
#      sleep 1
#   done
#   echo "Apt is not locked"
# }
#
# checkApt
# sudo apt-get update
#
# checkApt
# sudo apt-get install -y nginx
