#!/bin/bash

device=wifi
state=`nmcli radio "$device"`

if [ $state == 'habilitado' ];then
  nmcli radio $device off
else
  nmcli radio $device on
fi
