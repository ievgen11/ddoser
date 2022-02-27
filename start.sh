#!/bin/bash

docker build -t ddoser:dockerfile .

docker swarm init

docker service create --name ddoser_service --detach=false ddoser:dockerfile
docker service scale ddoser_service=100
