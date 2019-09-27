#!/bin/bash -e

# Default settings:
#   git name:  pexcn
#   git email: i@pexcn.me

case $(cat /etc/debian_version) in
  9*)
    ./debian/stretch/01-sources-list.sh
    ./debian/stretch/02-apt-install.sh
    ./debian/stretch/03-apt-purge.sh
    ./debian/stretch/04-bashrc.sh
    ./debian/stretch/05-git-config.sh
    ./debian/stretch/06-rc-local.sh
    ./debian/stretch/07-sysctl.sh
    ./debian/stretch/08-cleaner.sh
    ./debian/stretch/99-misc.sh
    ;;
  10*)
    ./debian/buster/01-sources-list.sh
    ./debian/buster/02-apt-install.sh
    ./debian/buster/03-apt-purge.sh
    ./debian/buster/04-bashrc.sh
    ./debian/buster/05-git-config.sh
    ./debian/buster/06-rc-local.sh
    ./debian/buster/07-sysctl.sh
    ./debian/buster/08-cleaner.sh
    ./debian/buster/99-misc.sh
    ;;
  *)
    echo "Not supported."
    exit 1
    ;;
esac
