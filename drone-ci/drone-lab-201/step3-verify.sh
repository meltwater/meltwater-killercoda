#!/bin/bash
if kubectl get pods | grep -v drone-runner | grep drone | grep -qi Running; then
  echo done
else
  echo drone is not running
  cd ~/k8s-env && kubectl apply -f .
fi
