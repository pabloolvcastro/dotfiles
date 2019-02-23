#! /bin/bash

#Run postgres
if [[ ! "$(docker ps -a | grep postgres)" ]]; then 
	docker run --name postgres -e POSTGRES_PASSWORD=postgres -d postgres:alpine 
fi

