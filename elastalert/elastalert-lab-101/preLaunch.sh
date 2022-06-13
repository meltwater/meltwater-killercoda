#!/bin/bash
apt update -y && apt install python3-pip -y
pip3 install elasticsearch==5.2.0 >> ~/error1.log
pip3 install elastalert >> ~/error1.log