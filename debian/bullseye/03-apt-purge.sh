#!/bin/bash

apt-get purge -y \
  acpi-support-base acpid busybox console-setup console-setup-linux cron debconf-i18n \
  discover discover-data distro-info-data dmidecode eject firmware-linux-free gcc-9-base haveged \
  installation-report isc-dhcp-common kbd keyboard-configuration laptop-detect libdiscover2 \
  libestr0 libfastjson4 libglib2.0-0 libhavege2 libglib2.0-data libicu67 liblocale-gettext-perl \
  liblockfile-bin liblognorm5 libmpdec3 libnewt0.52 libnss-systemd libpam-systemd libpci3 libpopt0 \
  libpython3-stdlib libpython3.9-minimal libpython3.9-stdlib libsqlite3-0  libtext-charwidth-perl \
  libtext-iconv-perl libtext-wrapi18n-perl liburing1 libusb-0.1-4 libusb-1.0-0 libx11-6 libx11-data \
  libxau6 libxcb1 libxdmcp6 libxext6 libxml2 libxmuu1 logrotate manpages media-types ncurses-term \
  os-prober pci.ids pciutils python-apt-common python3 python3-apt python3-certifi python3-chardet \
  python3-debian python3-debianbts python3-httplib2 python3-idna python3-minimal python3-pkg-resources \
  python3-pycurl python3-pysimplesoap python3-reportbug python3-requests python3-six python3-urllib3 \
  python3.9 python3.9-minimal qemu-guest-agent reportbug rsyslog shared-mime-info tasksel tasksel-data \
  usbutils vim-common vim-tiny whiptail xauth xdg-user-dirs xkb-data xxd
apt-get clean
