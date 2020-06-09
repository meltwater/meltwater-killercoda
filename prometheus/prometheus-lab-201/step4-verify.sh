#!/bin/bash
set -e
if grep -qi api_employee /class/blackbox.yml; then 
  echo done
else
  echo failed && exit 1; 
fi