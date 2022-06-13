#!/bin/bash
apt-get update -y && apt-get install -y python-pip
pip2 install elasticsearch==5.2.0 elastalert==0.1.36
