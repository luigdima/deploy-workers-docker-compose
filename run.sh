#!/bin/bash

WORKERS=$(find workers -maxdepth 1 -mindepth 1 -type d -printf '%f\n')

for WORKER in $WORKERS
do
    export WORKER=$WORKER
    docker-compose --project-name worker_$WORKER build --build-arg WORKER=$WORKER 
    docker-compose --project-name worker_$WORKER up --detach --no-build 
done