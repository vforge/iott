#!/bin/sh
echo "Raspberry Pi boot script"

# path to sd card on mac
DEST_PATH="/Volumes/boot"

# check if directory is writeable
if [ -w $DEST_PATH ]; then
  echo "> $DEST_PATH is writeable"
else
  echo "> $DEST_PATH is not writeable"
  exit -1
fi

# enable ssh
echo "> Enabling SSH"
touch "$DEST_PATH/ssh"

# enable wifi (stretch)
echo "> Enabling WiFi"

read -p "Enter your network name and press [ENTER]: " network_name
read -p "Enter your network password and press [ENTER]: " network_password

tee "$DEST_PATH/wpa_supplicant.conf" <<EOF
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
network={
    ssid="$network_name"
    psk="$network_password"
    key_mgmt=WPA-PSK
}
EOF

echo "> DONE!"

