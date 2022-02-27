#!/bin/bash

docker build -t ddoser:dockerfile .

docker swarm init

docker service create --name ddoser_service --detach=false ddoser:dockerfile
docker service scale ddoser_service=100

for name in $(docker ps --format "{{.Names}}"); do
  eval "docker logs -f --tail=5 \"$name\" | sed -e \"s/^/[-- $name --] /\" &";
done

wait
