#!/bin/bash
set -e
if grep -qi api_headers ~/prometheus.yml; then 
  echo done
else
  echo failed && exit 1; 
fi
