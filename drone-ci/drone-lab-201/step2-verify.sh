#!/bin/bash
if grep -qi RollingUpdate ~/k8s-env/drone-server.yaml; then
  if grep -qi _REPLACE_ ~/k8s-env/drone-server.yaml; then
    echo Error in yaml && exit 1
  else
    echo done
  fi
fi