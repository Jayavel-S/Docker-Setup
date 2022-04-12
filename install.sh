# A simple script to install the latest version of docker, docker-compose and Portainer in Ubuntu using the official get docker platform and the python library.

# Caching sudo access for install completion
sudo true

# Update the system with the latest packages
sudo apt-get update && sudo apt-get upgrade -y

# Official docker install script
wget -qO- https://get.docker.com/ | sh

# Adding User Permissions
sudo usermod -aG docker ${USER}

# Install the prerequisites for setting up docker-compose
sudo apt-get install -y libffi-dev libssl-dev
sudo apt-get install -y python3-dev
sudo apt-get install -y python3 python3-pip

# Installing docker-compose using pip3
sudo pip3 install docker-compose

# Enabling docker to start automatically on hardware reboot
sudo systemctl enable docker

# Installing portainer for Docker GUI Management
sudo docker volume create portainer_data
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
