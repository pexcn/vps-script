#!/bin/bash -e

apt-get install locales --no-install-recommends

sed -i '/^# en_US.UTF-8 UTF-8/s/^# //' /etc/locale.gen
sed -i '/^# zh_CN.UTF-8 UTF-8/s/^# //' /etc/locale.gen
sed -i '/^# zh_TW.UTF-8 UTF-8/s/^# //' /etc/locale.gen

locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
