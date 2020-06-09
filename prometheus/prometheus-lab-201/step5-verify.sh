#!/bin/bash
set -e
if grep -qi api_jokes /class/prometheus.yml; then 
  exit done
else
  exit 1
fi