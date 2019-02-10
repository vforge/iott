#!/bin/bash
echo "> Update"
sudo apt-get update

echo "> Upgrade"
sudo apt-get upgrade

echo "> Installing essentials"
sudo apt-get install glances
