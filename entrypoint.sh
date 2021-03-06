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

echo $GITHUB_WORKSPACE
echo $PWD
echo "new file context" > "$GITHUB_WORKSPACE/foo.txt"
mkdir -p "$GITHUB_WORKSPACE/folder2"
echo "new file context2" > "$GITHUB_WORKSPACE/folder2/foo2.txt"
