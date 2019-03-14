#!/bin/bash -e

case $(cat /etc/debian_version) in
  9*)
    bash debian/9/01-sources-list.sh
    bash debian/9/02-apt-install.sh
    bash debian/9/03-apt-purge.sh
    ;;
  8*)
    exit 0
	echo "Now support Debian 9 only."
    ;;
  *)
    exit 1
    ;;
esac
