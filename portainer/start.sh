#!/bin/bash

podman run -d \
  -p 8000:8000 \
  -p 9443:9443 \  
  --name portainer \
  --privileged \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v portainer:/data \
  portainer/portainer-ee:latest