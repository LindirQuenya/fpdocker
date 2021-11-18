#!/usr/bin/env bash

# Some complicated logic to get this script's absolute parent directory. Credit: https://stackoverflow.com/a/246128
unset CDPATH
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done

DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

for i in $(docker images | grep fpdocker-flash-wine | grep latest | cut -d ' ' -f1); do
  IMAGENAME="$i" "$DIR/run-wine.sh"
done
