#!/bin/bash -e

# timezone
ln -sf /usr/share/zoneinfo/Asia/Taipei /etc/localtime

# ipv4 first
sed -i "s/#precedence ::ffff:0:0\/96  100/precedence ::ffff:0:0\/96  100/g" /etc/gai.conf

# disable boot entries
#systemctl list-unit-files | grep enabled
systemctl disable getty@.service

# motd
cat << EOF > /etc/motd

Welcome to VPS!

EOF
