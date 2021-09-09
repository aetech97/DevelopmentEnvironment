#!/bin/bash
docker stop $(docker ps -aq)
docker build -t server .
CONTAINER_ID=$(docker run -d --rm -p 3000:3000 server)
docker logs -f $CONTAINER_ID
