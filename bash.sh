#!/bin/bash

# Add any additional packages you want to install here
packages=(
  "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
  "https://download.anydesk.com/linux/anydesk_7.0.6-1_amd64.deb"
  "https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/10702/wps-office_11.1.0.10702_amd64.deb"
)

# Download and install packages
for package in "${packages[@]}"; do
  wget "$package"
done

sudo dpkg -i *.deb
sudo apt-get install -f
sudo apt install curl -y # Fix: Correct package name is "curl"

# Install JumpCloud
sudo curl --tlsv1.2 --silent --show-error --header 'x-connect-key: 2c035afaf0b3d4bb6672ba85499014f7cf50d739' https://kickstart.jumpcloud.com/Kickstart | sudo bash

# Optionally, you can remove the downloaded packages after installation
# rm -f *.deb

echo "Installation completed."
