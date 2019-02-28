#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

sudo apt-get -y install glances git build-essential \
  python-dev python-pip python3-pip \
  pimoroni python3-blinkt python-blinkt

sudo pip install RPi.GPIO requests
sudo pip3 install adafruit-circuitpython-ssd1306
sudo pip3 install RPI.GPIO
sudo pip3 install adafruit-blinka
