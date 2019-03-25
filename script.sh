#!/bin/bash

echo "Environment:"
env

wait=${1:-10}

while [ $wait -gt 0 ]; do
  echo "Sleeping for $wait seconds"
  wait=$((wait - 1))
  sleep 1
done
