#!/bin/sh
docker run -d --name $CONTAINER_NAME -p $PORT:80 $IMAGE_NAME
