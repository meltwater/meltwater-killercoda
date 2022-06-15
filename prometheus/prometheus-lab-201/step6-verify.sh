#!/bin/bash
set -e
if [ $(kubectl get pods | grep 'blackbox\|prometheus' | grep Running | wc -l) == 2 ]; then 
  echo done; 
else 
  echo failed && exit 1; 
fi;