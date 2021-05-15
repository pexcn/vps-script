#!/bin/bash -e

# system limits
mkdir /etc/security/limits.d/
cat << EOF > /etc/security/limits.d/90-limits.conf
* soft nofile 1048576
* hard nofile 1048576
root soft nofile 1048576
root hard nofile 1048576

* soft nproc 51200
* hard nproc 51200
root soft nproc 51200
root hard nproc 51200
EOF

# systemd limits
cat << EOF >> /etc/systemd/system.conf
DefaultLimitNOFILE=1048576
DefaultLimitNPROC=51200
EOF
cat << EOF >> /etc/systemd/user.conf
DefaultLimitNOFILE=1048576
DefaultLimitNPROC=51200
EOF
