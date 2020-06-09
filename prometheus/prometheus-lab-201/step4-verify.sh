#!/bin/bash
set -e
if grep -qi punchline /class/blackbox.yml; then 
  echo done
else
  echo failed && exit 1; 
fi