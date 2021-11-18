#!/usr/bin/env bash

# This script deletes all the flashpoint docker images.
# Use with caution, it does what it says without prompting.

# Credit for trick with sed: https://stackoverflow.com/a/54840522
# Credit for looping over lines: https://stackoverflow.com/a/10752407

# Runs docker images, replaces multi-space sections with single spaces,
# greps for only lines that contain fpdocker, and feeds the output one
# line at a time to a subshell command.
docker images | sed 's/  */ /g' | grep fpdocker | while read -r line
do
  # $line is of the format: "fpdocker-something tag hash n timescale ago size"
  # To rmi this, we just need the first two. We use cut to select them.
  docker rmi "$(echo $line | cut -d ' ' -f 1):$(echo $line | cut -d ' ' -f 2)"
done
