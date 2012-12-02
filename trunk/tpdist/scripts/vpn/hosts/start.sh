# Params
# 1 -> ip remoto
# 2 -> puerto
# 3 -> ip de topologia
# 4 -> mascara topologia

openvpn ./host.conf --remote $1 --port $2 --ifconfig $3 $4
