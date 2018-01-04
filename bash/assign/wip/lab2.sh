#!/bin/bash

#Get configured interface names
interfaces=(`ifconfig |egrep -o '^\w+'`)
numinterfaces=${#interfaces[@]}


#Gather data for interfaces
ipv4=$(ip -o address | grep "${interfaces[$indx]}" | sed -n '1p' | awk '{print $4;}')
v4name=$(getent hosts ${ipv4[$indx]} | awk '{print $1;}')
ipv6=$(ip -o address | grep "${interfaces[$indx]}" | sed -n '2p' | awk '{print $4;}')
v6name=$(getent hosts ${ipv6[$indx]} | awk '{print $1;}')
speed=$(ethtool ${interfaces[$indx]} 2> /dev/null | grep Speed | awk '{print $2;}')
#Gather default gateway data
v4gwip=$(ip route | grep default | awk '{print $3;}')
v4gwname=$(getent hosts $v4gwip)
#Gather internet address
extip=$(curl -s icanhazip.com)
extname=$(getent hosts $extip)
