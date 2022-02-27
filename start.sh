#!/bin/bash

docker build -t sabotage:dockerfile .

docker swarm init

docker service create --name sabotage_service --detach=false sabotage:dockerfile
docker service scale sabotage_service=100
