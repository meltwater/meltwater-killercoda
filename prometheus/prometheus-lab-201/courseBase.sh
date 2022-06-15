#!/bin/bash
mkdir /data && chmod 777 /data
cd ~/k8s-env && kubectl apply -f .
