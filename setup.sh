# !/bin/bash
yes '' | apt-get update
yes '' | add-apt-repository ppa:deadsnakes/ppa
yes '' | apt install python3.8
yes '' | apt-get install python3.8-distutils
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
yes '' | python3.8 get-pip.py
yes '' | sudo pip install pyTelegramBotAPI
yes '' | python3.8 -m pip install redis
yes '' | python3.8 -m pip install jdatetime
yes '' | python3.8 -m pip install threaded
yes '' | pip3.8 install --upgrade requests
yes '' | sudo apt-get install redis-server
yes '' | pip3.8 install uuid
yes '' | pip3.8 install qrcode
yes '' | pip3.8 install pillow
yes '' | pip3.8 install opencv-python
yes '' | apt-get install ffmpeg libsm6 libxext6  -y
yes '' | apt-get install -y build-essential libzbar-dev
yes '' | pip3.8 install pyzbar
yes '' | pip3.8 install jdatetime
cp /usr/share/zoneinfo/Asia/Tehran /etc/localtime
echo -e "Setup Ended."