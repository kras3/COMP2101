#!/bin/bash

# demo script

export MYNAME="Kenneth"
mytitle="Supreme Commander"
myhostname=$(hostname)
weekday=$(date +%A)

cat <<EOF
Welcome to $myhostname, $mytitle $MYNAME!
Today is $weekday.
EOF
