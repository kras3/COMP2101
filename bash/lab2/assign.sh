#!/bin/bash

netint=$(ifconfig | sed -n '1p' | awk '{print $1;}') #network interface on line 1, 1st word
myip=$(ip address | grep "$netint" | sed -n '3p' | awk '{print $2;}') #use netint to lookup ip address
speed=$(ethtool $netint | awk '/Speed/' | awk '{print $2;}') #use ethtool to lookup speed on netint

echo "current information:
$netint
$myip
$speed"
