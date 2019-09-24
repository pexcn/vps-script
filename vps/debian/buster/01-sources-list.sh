#!/bin/bash -e

cat << EOF > /etc/apt/sources.list
deb http://deb.debian.org/debian buster main
deb-src http://deb.debian.org/debian buster main

deb http://deb.debian.org/debian buster-updates main
deb-src http://deb.debian.org/debian buster-updates main

deb http://security.debian.org/debian-security buster/updates main
deb-src http://security.debian.org/debian-security buster/updates main

deb http://deb.debian.org/debian buster-backports main
deb-src http://deb.debian.org/debian buster-backports main
EOF
