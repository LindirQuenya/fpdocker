#!/usr/bin/env bash
docker build . -f Dockerfile.base -t fpdocker-basilisk:20.04.1-0.3 -t fpdocker-basilisk:latest
docker build . -f Dockerfile.wine -t fpdocker-wine:20.04.1-0.3 -t fpdocker-wine:latest
docker build . -f Dockerfile.pipelight -t fpdocker-pipelight:20.04.1-0.3 -t fpdocker-pipelight:latest
docker image prune --filter label=stage=builder
docker build . -f Dockerfile.5xUnity -t fpdocker-5xunity:20.04.1-0.3 -t fpdocker-5xunity:latest
