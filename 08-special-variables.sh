#!/bin/bash
echo "All variables passed to the script:$@"
echo "All variables passed to the script:$*"
echo "Script name:$0"
echo "who is running this :$USER"
echo "Home directory of user:$HOME"
echo "PID of the script:$$"
sleep 50 &
echo "PID od the last command in background is :$!"