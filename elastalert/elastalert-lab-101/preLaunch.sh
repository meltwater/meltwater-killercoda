#!/bin/bash
apt update -y && apt install python3-pip -y
pip3 install elasticsearch==5.2.0
pip3 install elastalert==0.1.36