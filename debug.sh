#!/usr/bin/env bash

# exit script and do not run subsequent commands if any command fails
set -euf -o pipefail

./gradlew clean build

docker-compose -f docker-compose-debug.yml up --build
