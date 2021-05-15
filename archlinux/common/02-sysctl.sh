#!/bin/bash -e

cat << EOF > /etc/sysctl.d/80-optimize.conf
# system tuning
vm.swappiness = 30

# tcp tuning
net.ipv4.tcp_mtu_probing = 1
net.ipv4.tcp_fin_timeout = 30
net.ipv4.tcp_max_tw_buckets = 5000
net.ipv4.tcp_tw_reuse = 1
net.ipv4.tcp_keepalive_time = 600
net.ipv4.tcp_max_syn_backlog = 8192
net.ipv4.tcp_slow_start_after_idle = 0
net.ipv4.tcp_orphan_retries = 1
net.ipv4.ip_local_port_range = 10001 65000
net.core.netdev_max_backlog = 32768
net.core.somaxconn = 4096

# tcp fast open
net.ipv4.tcp_fastopen = 3

# tcp congestion control
net.ipv4.tcp_congestion_control = bbr
net.core.default_qdisc = fq_codel

#
# this values for low ram server (512MB) and high latency network (RTT 150ms+)
#
# 256MB 384MB 448MB
net.ipv4.tcp_mem = 65536 98304 114688
net.ipv4.tcp_rmem = 4096 131072 18750000
net.ipv4.tcp_wmem = 4096 131072 18750000
net.core.rmem_max = 18750000
net.core.wmem_max = 18750000
net.core.rmem_default = 262144
net.core.wmem_default = 262144
EOF
