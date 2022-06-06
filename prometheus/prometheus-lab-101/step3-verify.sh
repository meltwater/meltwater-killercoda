#!/bin/bash
set -e
if grep -qi scrape_configs ~/prometheus.yml; then 
  echo done
else
  echo failed to find scrape_configs && exit 1; 
fi