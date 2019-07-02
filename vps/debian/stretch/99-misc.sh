#!/bin/bash -e

# timezone
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
dpkg-reconfigure -f noninteractive tzdata

# ipv4 first
sed -i "s/#precedence ::ffff:0:0\/96  100/precedence ::ffff:0:0\/96  100/g" /etc/gai.conf

systemctl disable getty@.service
