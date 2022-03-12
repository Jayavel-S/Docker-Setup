# Easy Docker Setup
This script helps you with installing the latest version of Docker and Docker Compose in Ubuntu.

## Prerequisites
> 1. You need to have an ubuntu/debian based machine.
> 
> 2. Your instance should have the updated version of 'git' installed. You can check if you have git installed or not by running the command `git version` and have a look at the output.
> 
>       ![git version](https://user-images.githubusercontent.com/101336634/158008355-768918e3-7ced-462f-9a9f-e52e539c875b.png)
>    
>    If you do not have git installed, you can use the command `sudo apt install git` to install the latest version of git in your system.

## Initiating the Script

Open Putty or any ssh tool that you use to connect to your instance. Clone this repository to any directory.

`git clone https://github.com/Jayavel-S/Docker-Setup` and cd into the parent directory `cd Docker-Setup`

The script to install the latest version of docker and docker-compose is named as **install.sh**. Run the script with elevated privileages.

**`sudo sh install.sh`**

This will pull the latest version of docker according to the platform that you are using (x86/x64/ARM) and also install the docker-compose relevant to that binary using python.

Reboot the system and check if the installation was successful.

`sudo reboot now` and once the machine is back up, run `docker version` or `docker-compose version`.

If they return the respective version values, the system has successfully processed the docker installation.
