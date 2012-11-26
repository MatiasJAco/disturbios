#!/bin/bash

sudo ifconfig br0 down


sudo brctl delif br0 eth0
sudo brctl delif br0 tap0
sudo brctl delif br0 tap1
sudo brctl delif br0 tap2

sudo brctl delbr br0

sudo tunctl -d tap0
sudo tunctl -d tap1
sudo tunctl -d tap2

sudo ifconfig eth0 up
sudo ifconfig eth0 10.10.10.99/24

sudo route add default gw 10.10.10.254

