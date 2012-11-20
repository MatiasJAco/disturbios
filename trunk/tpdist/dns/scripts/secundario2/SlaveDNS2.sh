sudo ifconfig eth0 down
sudo ifconfig eth1 10.24.3.5 netmask 255.255.255.0 up
sudo route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.24.3.4 metric 1
