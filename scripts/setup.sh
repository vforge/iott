# #!/bin/bash

# # sudo nano /etc/hostname
# # sudo nano /etc/hosts
# # dpkg-reconfigure tzdata

sudo apt-get -y update

sudo apt-get -y upgrade

sudo apt-get -y install glances git build-essential \
  i2c-tools libi2c-dev \
  python-dev python-pip python3-pip \
  python-smbus python3-smbus \
  python-numpy python3-numpy \
  python-pil python3-pil \
  python-psutil python3-psutil \
  python-tweepy python3-tweepy \
  python-blinkt python3-blinkt pimoroni \
  python-scrollphathd python3-scrollphathd \

# # sudo pip install RPi.GPIO requests
# # sudo pip3 install adafruit-circuitpython-ssd1306
# # sudo pip3 install RPI.GPIO
# # sudo pip3 install adafruit-blinka

# # curl https://get.pimoroni.com/scrollphathd | bash
