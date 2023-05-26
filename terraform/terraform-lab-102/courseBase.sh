#!/bin/bash
chmod 755 /root
cd ~/k8s-env && kubectl apply -f .
