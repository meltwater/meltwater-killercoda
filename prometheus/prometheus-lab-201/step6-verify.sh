#!/bin/bash
set -e
if [[ $(curl -s localhost:30090/api/v1/query -d 'query=probe_success{}' | jq '.data.result | length') -eq 2 ]]; then 
  echo done; 
else 
  echo failed && exit 1; 
fi;
