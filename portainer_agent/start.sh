#!/bin/bash

podman run -d \
    -p 9001:9001 \
    --name portainer_agent \
    --restart=always \
    -v /var/run/podman/podman.sock:/var/run/docker.sock \
    -v portainer:/var/lib/docker/volumes \
    portainer/agent:2.19.4