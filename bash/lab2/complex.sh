#!/bin/bash

netint=$(ifconfig | sed -n '1p' | awk '{print $1;}') #network interface on line 1, 1st word
myip=$(ip -o address | grep "$netint" | sed -n '1p' | awk '{print $4;}') #use netint to lookup ip address
speed=$(ethtool $netint | awk '/Speed/' | awk '{print $2;}') #use ethtool to lookup speed on netint
default=$(ip route | grep default | awk '{print $3;}')
publicip=$(curl icanhazip.com)

echo "current information:
$netint
$myip
$speed
$default
$publicip"
