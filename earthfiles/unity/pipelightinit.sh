#!/usr/bin/env bash
# For debugging.
printenv
# Run basilisk. This should trigger wine init and pipelight init.
/basilisk/basilisk &
PID="$!"
# Give it time to init the wineprefix.
sleep 20
# And kill it wint an interrupt. We need to continue to the next step.
kill -s 2 "$PID"

# Install dxvk
winetricks dxvk
