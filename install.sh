# Caching sudo access for install completion
sudo true

# Official docker install script
wget -qO- https://get.docker.com/ | sh

# Adding User Permissions
sudo usermod -aG docker ${USER}

# Install the prerequisites for setting up docker-compose
sudo apt-get install libffi-dev libssl-dev
sudo apt install python3-dev
sudo apt-get install -y python3 python3-pip

# Installing docker-compose using pip3
sudo pip3 install docker-compose

# Enabling docker to start automatically on hardware reboot
sudo systemctl enable docker
