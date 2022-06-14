#!/bin/bash
apt install python2-pip -y
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
python2 get-pip.py
rm get-pip.py
pip2 install elasticsearch==5.2.0 >> ~/error1.log
pip2 install elastalert==0.1.35 >> ~/error1.log
