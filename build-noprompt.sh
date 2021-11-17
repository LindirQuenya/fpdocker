#!/usr/bin/env bash

CURRVERSION="20.04.1-0.4"

# Build the base image. Feature: hardware acceleration.
docker build . -f Dockerfile.base -t fpdocker-base:$CURRVERSION -t fpdocker-base:latest
# Build the basilisk image. Feature: Basilisk-browser with autoconfig.
docker build . -f Dockerfile.basilisk -t fpdocker-basilisk:$CURRVERSION -t fpdocker-basilisk:latest
# Build the wine image. Feature: WINE compatibility layer.
docker build . -f Dockerfile.wine -t fpdocker-wine:$CURRVERSION -t fpdocker-wine:latest
# Build the pipelight image. Feature: Pipelight installs windows-only browser plugins in WINE.
docker build . -f Dockerfile.pipelight -t fpdocker-pipelight:$CURRVERSION -t fpdocker-pipelight:latest
# Prune the builder image (used for building Pipelight from source)
docker image prune --force --filter label=stage=builder

# Leaf image:
#        ubuntu => base => basilisk => flash32_0r0_330
# Build a flash plugin image. Feature: Flash Plugin v32_0r0_330.
docker build . -f Dockerfile.flash32_0r0_330 -t fpdocker-flash32_0r0_330:$CURRVERSION -t fpdocker-flash32_0r0_330:latest

# Leaf image:
#        ubuntu => base => basilisk => flash11_2r202_644
# Build a flash plugin image. Feature: Flash Plugin v11_2r202_644.
docker build . -f Dockerfile.flash11_2r202_644 -t fpdocker-flash11_2r202_644:$CURRVERSION -t fpdocker-flash11_2r202_644:latest

# Leaf image:
#        ubuntu => base => flashSA32_0r0_330
# Build a flash stand-alone image. Feature: Flash SA v32_0r0_330.
docker build . -f Dockerfile.flashSA32_0r0_330 -t fpdocker-flash-sa32_0r0_330:$CURRVERSION -t fpdocker-flash-sa32_0r0_330:latest

# Future: more flashSA images, with wine.

# Leaf image:             ubuntu => builder =>\
#        ubuntu => base => basilisk => wine => pipelight => 5xunity
# Build the 5xunity image. Feature: Unity Web Player 5.x in Basilisk through Pipelight/WINE.
docker build . -f Dockerfile.5xUnity -t fpdocker-5xunity:$CURRVERSION -t fpdocker-5xunity:latest

# Future: 3xunity, 2xunity.
