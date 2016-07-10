
# ------------------------------------------------------------
# Setup Environment
# ------------------------------------------------------------
#!/bin/bash
message=test
echo "$message"
apt-get update
# install necessery programms through apt-get
apt-get install postgresql python3 python3-pip redis-server nginx 
# install virtualenv through pip
pip3 install virtualenv
# create virtualenv
virtualenv ./venv
#
. ./venv/bin/activate
# install software through pip in virtualenv
cat ./requirements.txt | xargs pip install
