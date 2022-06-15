#!/bin/bash
chmod 755 /root
mkdir /data && chmod 777 /data
cd ~/k8s-env && kubectl apply -f .
