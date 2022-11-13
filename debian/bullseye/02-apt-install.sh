#!/bin/bash

apt-get update
apt-get install --no-install-recommends -y \
  bash-completion ca-certificates dialog psmisc net-tools \
  gcc make  git nano tree curl ethtool xz-utils
apt-get clean
