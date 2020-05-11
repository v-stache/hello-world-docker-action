#!/bin/sh -l
echo "Hello $1"
echo "Second arg $2"
if [ "$2" = "test" ] # https://github.com/v-stache/hello-world-docker-action/runs/663883012?check_suite_focus=true
then
  echo "game over"
  exit 1
else
    echo "good"
fi
time=$(date)
echo "::set-output name=time::$time"
printenv
