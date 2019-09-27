#!/bin/bash -e

apt-get update
apt-get install --no-install-recommends -y \
  bash-completion ca-certificates dialog psmisc net-tools mtr-tiny \
  gcc make automake autoconf libtool git nano tree curl
dpkg -i packages/chkconfig*.deb
apt-get clean
