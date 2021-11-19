#!/bin/sh

echo "Test Container code: $1"

cd $1 || exit 1

container="codeskel64:${1}"

podman build --tag "$container" .
podman run "$container"
podman rmi "$container"
cd ..
