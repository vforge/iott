#!/bin/bash
echo "> Update"
sudo apt-get update

echo "> Upgrade"
sudo apt-get upgrade

echo "> Installing essentials"
sudo apt-get install glances git

echo "> Installing Python"
sudo apt-get install build-essential python-dev python-pip

echo "> Installing Python: GPIO"
sudo pip install RPi.GPIO
