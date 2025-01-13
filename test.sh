#!/bin/bash
#build the docekr image
docker build -t resource-intensive .

#run the docker image
docker run --cpu-period=100000 --cpu-quota=25000 --memory=512m resource-intensive
