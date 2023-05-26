#!/bin/bash
chmod 755 /root
cd ~/k8s-env && kubectl apply -f .
docker pull amazonlinux
docker pull amazon/aws-cli
