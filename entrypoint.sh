#!/bin/sh -l
echo "Hello $1"
echo "Second arg $2"
time=$(date)
echo "::set-output name=time::$time"
printenv
