#!/bin/sh

BASEDIR=$(dirname "$0")
install -D -m 755 "$BASEDIR"/"$1"/"$1".initd /etc/init.d/"$1"
install -D -m 644 "$BASEDIR"/"$1"/"$1".confd /etc/conf.d/"$1"
