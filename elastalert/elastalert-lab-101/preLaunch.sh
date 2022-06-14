#!/bin/bash
# Download Ancient Code
apt install python2-dev -y
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
python2 get-pip.py
rm get-pip.py
# Install Ancient Libraries
pip2 install elasticsearch==5.3.0 >> ~/error1.log
pip2 install elastalert==0.1.35 >> ~/error1.log
# Replace Current Runtime with Ancient
ln -sf /usr/bin/python2 /etc/alternatives/python
