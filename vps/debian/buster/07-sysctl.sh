#!/bin/bash -e

cat << EOF > /etc/sysctl.d/80-optimize.conf
vm.swappiness = 30
fs.file-max = 262144
net.core.rmem_max = 16777216
net.core.wmem_max = 16777216
net.core.rmem_default = 262144
net.core.wmem_default = 262144
net.core.netdev_max_backlog = 65535
net.core.somaxconn = 4096
net.netfilter.nf_conntrack_max = 32768
net.ipv4.tcp_mem = 16384 98304 111360
net.ipv4.tcp_rmem = 8192 262144 16777216
net.ipv4.tcp_wmem = 8192 262144 16777216
net.ipv4.tcp_mtu_probing = 1
net.ipv4.tcp_fin_timeout = 30
net.ipv4.tcp_max_tw_buckets = 5000
net.ipv4.tcp_syncookies = 1
net.ipv4.tcp_tw_reuse = 1
net.ipv4.tcp_tw_recycle = 0
net.ipv4.tcp_keepalive_time = 600
net.ipv4.tcp_max_syn_backlog = 8192
net.ipv4.ip_local_port_range = 10001 65000
net.ipv4.tcp_slow_start_after_idle = 0
net.ipv4.tcp_orphan_retries = 1
net.ipv4.tcp_fastopen = 3
net.core.default_qdisc = fq_codel
net.ipv4.tcp_congestion_control = bbr
EOF
