#!/bin/bash
#ipgns3=192.168.1.2
#iphosts=192.168.1.3
#porthosts=5000

#VPN con Host C
echo "VPN Host C"
#sudo openvpn --remote $iphosts --port $porthosts --dev tapC --ifconfig 10.92.27.6 255.255.255.128
openvpn ./hostC.conf &
