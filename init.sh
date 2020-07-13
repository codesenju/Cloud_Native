#!/bin/sh
docker swarm init --advertise-addr $Network_Addr
docker stack deploy --compose-file docker-compose.yml $Service_Name
docker service ls
docker service logs $Service_Name -f
