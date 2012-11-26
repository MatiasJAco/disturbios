#!/bin/bash

    sudo tunctl -t tap0
    sudo tunctl -t tap1
    sudo tunctl -t tap2

    sudo ifconfig tap0 0.0.0.0 promisc up
    sudo ifconfig tap1 0.0.0.0 promisc up
    sudo ifconfig tap2 0.0.0.0 promisc up
    sudo ifconfig eth0 0.0.0.0 promisc up

 
    sudo brctl addbr br0

    sudo brctl addif br0 tap0
    sudo brctl addif br0 eth0
    sudo brctl addif br0 tap1
    sudo brctl addif br0 tap2



    sudo ifconfig br0 up
    sudo ifconfig br0 192.168.1.1/24
    sudo ifconfig tap0 10.24.1.4/24
    sudo ifconfig tap1 10.10.5.6/27
    sudo ifconfig tap2 10.92.27.6/25

#    sudo route add default gw 10.10.10.254


