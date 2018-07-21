#!/bin/bash

read -p "Enter SSID: " ssid
read -s -p "Enter Password: " password

nmcli device wifi connect "$ssid" password $password
