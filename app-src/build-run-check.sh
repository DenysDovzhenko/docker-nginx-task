#!/bin/bash

# BUILD stage

docker buildx build . -t denjia74/go-web

# RUN stage

docker run -d -p 8080:8080 --name golang_app denjia74/go-web

# HTTP code check stage

RESPONSE=$(curl --write-out %{http_code} --silent --output /dev/null 0.0.0.0:8080/ping)

if [ $RESPONSE -ne 200 ]
then
    echo "Build has failed..."
else
    echo "Build is successfull!"
fi
