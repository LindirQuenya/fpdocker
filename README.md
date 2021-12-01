This repo has moved to https://gitlab.fp.unstable.life/flashpoint/software/fpdocker. This version will be archived.

# fpdocker
Dockerfiles for use in portable Linux version of the Flashpoint Project.

To build this, you will need [earthly](https://earthly.dev).

Build and Run
========
Build all the containers with `earthly +all-leaf`, and run one of the resulting containers with `IMAGENAME=fpdocker-{*something*} ./scripts/run.sh`.

`run.sh` should give you a shell. From there, open basilisk (`/basilisk/basilisk`), and try opening a page that requires the technology corresponding to the something that you filled in.

If you want to keep the container around after running, use `run-keep.sh` instead of `run.sh`.

I should note that the run scripts make some assumptions about the environment in which they are running.  
These assumptions are as follows:
 - X access control is turned off. This can be achieved by running `xhost +`. I plan to remove this requirement in the near future.
 - You have X11 installed, and `/tmp/.X11-unix` contains the relevant unix domain sockets for Xorg. Currently, we're not supporting Wayland.
 - The environment variable DISPLAY contains the correct display identifier. If you're able to use graphical applications, this is probably true.
 - DRI is working and the renderers are available at `/dev/dri/`.
 - Pulseaudio is installed, and has a running socket on `/run/user/$UID/pulse/native`. I guess this requires systemd.
 - The Pulseaudio authentication cookie is available in `/home/$USER/.config/pulse/`.

The above assumptions are not hard rules: I expect that all sufficiently advanced users will find it easy to rewrite my scripts to fit their environments. I only detail the environment that I have configured it for, and that I expect the defaults to work in.

If you do customize the scripts, please send me a pull request! I would love to incorporate your changes.
