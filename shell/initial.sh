#!/bin/bash -e

case $(cat /etc/debian_version) in
  9*)
    bash debian/stretch/01-sources-list.sh
    bash debian/stretch/02-apt-install.sh
    bash debian/stretch/03-apt-purge.sh
    bash debian/stretch/04-bashrc.sh
    bash debian/stretch/05-git-config.sh
    bash debian/stretch/06-rc-local.sh
    bash debian/stretch/07-sysctl.sh
    bash debian/stretch/08-cleaner.sh
    bash debian/stretch/99-misc.sh
    ;;
  *)
	echo "Not supported."
    exit 1
    ;;
esac
