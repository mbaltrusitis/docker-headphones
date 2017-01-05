#!/bin/bash

# only run on a fresh machine where these container names are not used
docker run --name=vheadphones mbaltrusitis/headphones echo 'Initialized volumes'
docker run --name=headphones --restart=always -d \
  --volumes-from=vheadphones -p 8181:8181 mbaltrusitis/headphones

