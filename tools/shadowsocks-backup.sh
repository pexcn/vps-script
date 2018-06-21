#!/bin/bash -e

export BASE_DIR=/root/ss

function backup_ss_repo() {
  pushd $BASE_DIR
  if [ ! -d $1 ]; then
    git clone https://github.com/shadowsocks/$1.git -b $2 --single-branch
  fi
  pushd $1
  git submodule update --init --recursive
  git pull --no-edit origin master
  popd
  popd
}

# servers
backup_ss_repo shadowsocks-libev master
backup_ss_repo simple-obfs master

# clients
backup_ss_repo shadowsocks-windows master
backup_ss_repo shadowsocks-android master
backup_ss_repo openwrt-shadowsocks master

# depends
backup_ss_repo libbloom master
backup_ss_repo libcork shadowsocks
backup_ss_repo ipset shadowsocks

backup_ss_repo openwrt-feeds master

backup_ss_repo badvpn shadowsocks-android
backup_ss_repo libancillary shadowsocks-android
backup_ss_repo libev master
backup_ss_repo libevent shadowsocks-android
backup_ss_repo redsocks shadowsocks-android
backup_ss_repo go shadowsocks
backup_ss_repo overture shadowsocks
