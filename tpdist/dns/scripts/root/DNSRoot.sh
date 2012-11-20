sudo ifconfig eth0 down
sudo ifconfig eth1 10.24.1.133 netmask 255.255.255.128 up
sudo route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.24.1.132 metric 1
