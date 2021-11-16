#!/usr/bin/env bash
# Use the following command to run the container:
docker run -v "/tmp/.X11-unix:/tmp/.X11-unix" -e "DISPLAY=$DISPLAY" --device=/dev/dri:/dev/dri -v "/run/user/$(id -u)/pulse:/run/user/0/pulse" -v "/home/$USER/.config/pulse:/root/.config/pulse" -it fpdocker-5xunity:latest bash
# Inside the container, run /basilisk/basilisk and open some unity3d test.
