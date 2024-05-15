#!/bin/bash

TAG="0.1.2"

 docker buildx build \
  --platform linux/arm64,linux/amd64 \
  --sbom=true --provenance=true \
  --push  \
-t registry.terrapin.com/ami2mqtt:${TAG} -f Dockerfile .

echo "registry.terrapin.com/ami2mqtt:${TAG}"
