#!/bin/bash
set -e
if docker ps | grep -qi 'prometheus'; then
  echo done; 
else 
  echo failed && exit 1; 
fi;