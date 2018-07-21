#!/bin/bash

nmcli con | head

read -p "Enter Wifi do disconnect from: " wifiname

nmcli con down "$wifiname"
