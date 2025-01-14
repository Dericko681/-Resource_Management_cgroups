#!/bin/bash 

# Enable error handling
set -e

# Step 1: Install Multipass (if not already installed)
if ! command -v multipass &> /dev/null; then
    echo "Installing Multipass..."
    sudo apt install snapd
    sudo snap install multipass
else
    echo "Multipass is already installed."
fi

# Step 2: Launch a Multipass instance (Ubuntu)
INSTANCE_NAME="docker-instance"
echo "Launching Multipass instance: $INSTANCE_NAME..."
multipass launch docker --name $INSTANCE_NAME 

# Step 3: Install Docker inside the Multipass instance
echo "Installing Docker inside the Multipass instance..."
multipass exec $INSTANCE_NAME -- bash -c "sudo apt update && sudo apt install -y docker.io && git clone https://github.com/Dericko681/Resource_Management_cgroups.git && sudo docker pull ubuntu"

#step4: installing the docker images
# echo "pulling ubuntu 


# echo " containerstack/cpustress"
# docker pull containerstack/cpustress

#step5: simulating heavy cpu usage
# echo "stressing the cpu with cpustress"
# docker run -it --name stress-test --cpus=".25" --memory="512m" containerstack/cpustress -c 8 -m 1 --vm-bytes 300M -t 60s
