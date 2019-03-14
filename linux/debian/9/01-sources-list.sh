#!/bin/bash -e

> /etc/apt/sources.list

echo 'deb http://deb.debian.org/debian stretch main' >> /etc/apt/sources.list
echo 'deb-src http://deb.debian.org/debian stretch main' >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo 'deb http://deb.debian.org/debian stretch-updates main' >> /etc/apt/sources.list
echo 'deb-src http://deb.debian.org/debian stretch-updates main' >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo 'deb http://security.debian.org/debian-security stretch/updates main' >> /etc/apt/sources.list
echo 'deb-src http://security.debian.org/debian-security stretch/updates main' >> /etc/apt/sources.list
echo >> /etc/apt/sources.list
echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list
echo 'deb-src http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list
