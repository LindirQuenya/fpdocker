# fpdocker
Dockerfiles for use in portable Linux version of the Flashpoint Project.

Build them with `build.sh`, and run one of the resulting containers with `IMAGENAME=fpdocker-{*something*} run.sh`.

That should give you a shell. From there, open basilisk (`/basilisk/basilisk`), and try opening a page that requires the technology corresponding to the something that you filled in.

If you want to keep the container around after running, use `run-keep.sh` instead of `run.sh`.

If you don't want a prompt for `docker image prune`-ing, and you are VERY sure, you may use `build-noprompt.sh`.
