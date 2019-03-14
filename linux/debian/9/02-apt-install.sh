#!/bin/bash -e

apt-get update
apt-get install --no-install-recommends -y \
  bash-completion dialog ca-certificates psmisc net-tools \
  mtr-tiny traceroute gcc make automake autoconf libtool \
  git nano curl
dpkg -i misc/chkconfig*.deb
apt-get clean
