#!/bin/bash
set -e

# Build the image
docker build -f knmq-Dockerfile -t kn-mq-image .

# Run the Container
docker run -d --name my-mq-container -p 9443:9443 -p 1414:1414 kn-mq-image
