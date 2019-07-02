#!/bin/bash -e

cat << EOF > /etc/apt/sources.list
deb http://deb.debian.org/debian stretch main
deb-src http://deb.debian.org/debian stretch main

deb http://deb.debian.org/debian stretch-updates main
deb-src http://deb.debian.org/debian stretch-updates main

deb http://security.debian.org/debian-security stretch/updates main
deb-src http://security.debian.org/debian-security stretch/updates main

deb http://deb.debian.org/debian stretch-backports main
deb-src http://deb.debian.org/debian stretch-backports main
EOF
