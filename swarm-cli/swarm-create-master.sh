#/bin/bash

echo "Create docker swarm on node $1"

docker swarm init --advertise-addr=$1
