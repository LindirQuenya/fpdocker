The scripts in this directory are as follows:
 - `run.sh`:            Runs the container specified by the environment variable IMAGENAME. See `../README.md` for assumptions.
 - `run-keep.sh`:       Same as above, but doesn't auto-delete the container after running. Mostly for debugging.
 - `delete.sh`:         Deletes all fpdocker containers.
 - `pull-depends.sh`:   Pulls the latest versions of all the dependencies from the docker hub.
