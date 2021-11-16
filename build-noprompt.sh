#!/usr/bin/env bash
# Build the base image. Feature: hardware acceleration.
docker build . -f Dockerfile.base -t fpdocker-base:20.04.1.0.4 -t fpdocker-base:latest
# Build the basilisk image. Feature: Basilisk-browser with autoconfig.
docker build . -f Dockerfile.basilisk -t fpdocker-basilisk:20.04.1-0.4 -t fpdocker-basilisk:latest
# Build a flash plugin image. Feature: Flash Plugin v32_0r0_330.
docker build . -f Dockerfile.flash32_0r0_330 -t fpdocker-flash32_0r0_330:20.04.1-0.4 -t fpdocker-flash32_0r0_330:latest
# Build the wine image. Feature: WINE compatibility layer.
docker build . -f Dockerfile.wine -t fpdocker-wine:20.04.1-0.4 -t fpdocker-wine:latest
# Build the pipelight image. Feature: Pipelight installs windows-only browser plugins in WINE.
docker build . -f Dockerfile.pipelight -t fpdocker-pipelight:20.04.1-0.4 -t fpdocker-pipelight:latest
# Prune the builder image (used for building Pipelight from source)
docker image prune --force --filter label=stage=builder
# Build the 5xunity image. Feature: Unity Web Player 5.x in Basilisk through Pipelight/WINE.
docker build . -f Dockerfile.5xUnity -t fpdocker-5xunity:20.04.1-0.4 -t fpdocker-5xunity:latest
