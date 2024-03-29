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
net.ipv4.ip_unprivileged_port_start = 0
net.core.netdev_max_backlog = 32768
net.core.somaxconn = 4096
#net.netfilter.nf_conntrack_max = 32768
net.ipv4.tcp_fastopen = 3

#
# for 512m ram and rtt 150ms+ network
#
# 256MB 384MB 448MB
net.ipv4.tcp_mem = 65536 98304 114688
net.ipv4.tcp_rmem = 4096 131072 18750000
net.ipv4.tcp_wmem = 4096 131072 18750000
net.core.rmem_max = 18750000
net.core.wmem_max = 18750000
net.core.rmem_default = 262144
net.core.wmem_default = 262144
net.ipv4.tcp_congestion_control = bbr
net.core.default_qdisc = cake

##
## for 1024m ram and rtt 20ms+ network
##
## 512MB 768MB 896MB
#net.ipv4.tcp_mem = 131072 196608 229376
##net.ipv4.tcp_rmem = 4096 131072 6291456
#net.ipv4.tcp_wmem = 4096 131072 4194304
#net.core.rmem_max = 10000000
#net.core.wmem_max = 10000000
#net.core.rmem_default = 262144
#net.core.wmem_default = 262144
#net.ipv4.tcp_congestion_control = bbr
#net.core.default_qdisc = fq_pie
EOF
