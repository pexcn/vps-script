#!/bin/bash -e

apt-get update
apt-get install --no-install-recommends -y \
  gcc make automake autoconf git tree
apt-get clean
