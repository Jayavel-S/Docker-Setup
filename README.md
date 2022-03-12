# Easy Docker Setup
This repo consists of some scripts which will help in intalling docker on ubuntu and setup some necessary applications for organizing your home media.

## Below are some of the prerequisites
> 1. You need to have an ubuntu/debian based machine.
> 
> 2. Your instance should have the updated version of 'git' installed. You can check if you have git installed or not by running the command `git version` and have a look at the output.
> 
>       ![git version](https://user-images.githubusercontent.com/101336634/158008355-768918e3-7ced-462f-9a9f-e52e539c875b.png)
> 
> 3. You should note down the PUID and the PGID of the current user in your system. To know that, you can run `id` from the terminal and it will return the respective values starting with the `uid=` and `gid=`. It will most likely be 1000, 1000 or 1001, 1001. Note the values for later use.
> 
>       ![id](https://user-images.githubusercontent.com/101336634/158008479-2268262a-29c9-49aa-8fcb-9c255da0203f.png)

## Starting the installation

Open Putty or any ssh tool that you use to connect to your instance. Clone this repository to any directory.

`git clone https://github.com/Jayavel-S/Homelab` and cd into the parent directory `cd Homelab`

The script to install the latest version of docker and docker-compose is named as **install.sh**. Run the script with elevated privileages.

**`sudo sh install.sh`**

This will pull the latest version of docker according to the platform that you are using (x86/x64/ARM) and also install the docker-compose relevant to that binary using python.

Reboot the system and check if the installation was successful.

`sudo reboot now` and once the machine is back up, run `docker version` or `docker-compose version`.

If they return the respective version values, the system has successfully processed the docker installation.
