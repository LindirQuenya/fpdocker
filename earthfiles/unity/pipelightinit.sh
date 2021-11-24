#!/usr/bin/env bash
# Run basilisk. This should trigger wine init and pipelight init.
/basilisk/basilisk &
PID="$!"
# Give it time to init the wineprefix.
sleep 20
# And kill it. We don't want it hanging around.
kill "$PID"
