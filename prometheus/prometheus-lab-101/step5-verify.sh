#!/bin/bash
set -e
if docker ps | grep -qi 'node-exporter'; then
  echo done; 
else 
  echo failed && exit 1; 
fi;