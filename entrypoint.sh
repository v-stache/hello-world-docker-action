#!/bin/sh -l
echo "Hello $1"
echo "Second arg $2"
if [ "$2" = "test" ]
then
  echo "game over"
  exit 1
else
    echo "good"
fi
time=$(date)
echo "::set-output name=time::$time"
printenv
