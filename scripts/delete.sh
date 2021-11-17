#!/usr/bin/env bash

# This script deletes all the flashpoint docker images.
# Use with caution, it does what it says without prompting.

# Set the target version here so that I don't have to manually change all of those.
CURRVERSION="$CURRVERSION"

docker rmi fpdocker-base:latest fpdocker-base:$CURRVERSION \
           fpdocker-basilisk:latest fpdocker-basilisk:$CURRVERSION \
           fpdocker-wine:latest fpdocker-wine:$CURRVERSION \
           fpdocker-pipelight:latest fpdocker-pipelight:$CURRVERSION \
           fpdocker-5xunity:latest fpdocker-5xunity:$CURRVERSION \
           fpdocker-flash32_0r0_330:latest fpdocker-flash32_0r0_330:$CURRVERSION \
           fpdocker-flash11_2r202_644:latest fpdocker-flash11_2r202_644:$CURRVERSION \
           fpdocker-flash-sa32_0r0_330:latest fpdocker-flash-sa32_0r0_330:$CURRVERSION \
           fpdocker-flash-sa11_2r202_644:latest fpdocker-flash-sa11_2r202_644:$CURRVERSION
