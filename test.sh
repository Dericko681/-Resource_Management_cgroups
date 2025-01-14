#!/bin/bash
# Enable error handling (exit on error)
set -e
# Check if Docker is installed and running
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Please install Docker before running this script."
    exit 1
fi

#build the docekr image
docker build -t resource-intensive   || { echo "Failed to build Docker image."; exit 1; }

#run the docker image
docker run --cpu-period=100000 --cpu-quota=25000 --memory=512m resource-intensive
echo "Script execution completed successfully."