The scripts in this directory are as follows:
`run.sh`:            Runs the container specified by the environment variable IMAGENAME. See `../README.md` for assumptions.
`run-keep.sh`:       Same as above, but doesn't auto-delete the container after running. Mostly for debugging.
`build.sh`:          Builds all the containers, prompting for the docker builder prune.
`build-noprompt.sh`: Builds all the containers, without prompting for the docker prune.
`delete.sh`:         Deletes all fpdocker containers.
