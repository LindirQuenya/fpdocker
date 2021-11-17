#!/usr/bin/env bash

if [ -z "${IMAGENAME}" ]; then
  echo "Error, IMAGENAME not set!"
  echo "Set image name to the name of the docker image that you want to run."
  echo "Ex: 'IMAGENAME=fpdocker-basilisk:latest ./run.sh'"
else
  docker run -v "/tmp/.X11-unix:/tmp/.X11-unix" -e "DISPLAY=$DISPLAY" --device=/dev/dri:/dev/dri -v "/run/user/$(id -u)/pulse:/run/user/0/pulse" -v "/home/$USER/.config/pulse:/root/.config/pulse" -it --rm $IMAGENAME /basilisk/basilisk 'http://biomediaproject.com/bmp/files/LEGO/gms/online/Adventurers/TheQuestForTheGoldenDragon/'
fi
