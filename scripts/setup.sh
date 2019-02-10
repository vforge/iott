#!/bin/bash
echo "> Update"
sudo apt-get update

echo "> Upgrade"
sudo apt-get upgrade

echo "> Installing essentials"
sudo apt-get -y install glances git

echo "> Installing Python"
sudo apt-get -y install build-essential python-dev python-pip

echo "> Installing Python: GPIO"
sudo pip install RPi.GPIO
