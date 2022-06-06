#!/bin/bash
set -e
if [ $(docker ps | grep 'prometheus' | grep Up | wc -l) == 1 ]; then 
  echo done; 
else 
  echo failed && exit 1; 
fi;