#!/bin/bash -e

apt-get update
apt-mark manual openssh-server
apt-get purge -y \
  apt-listchanges bind9-host bsdmainutils bzip2 console-setup \
  console-setup-linux cron dbus debconf-i18n debian-faq dh-python \
  dictionaries-common discover discover-data distro-info-data \
  dmidecode doc-debian eject emacsen-common geoip-database gnupg \
  gnupg-agent hdparm iamerican ibritish ienglish-common installation-report \
  iso-codes ispell kbd keyboard-configuration krb5-locales laptop-detect \
  libassuan0 libbind9-140 libc-l10n libclass-isa-perl libdbus-1-3 \
  libdiscover2 libdns162 libestr0 libfastjson4 libgeoip1 libicu57 \
  libisc160 libisccc140 libisccfg140 libksba8 liblocale-gettext-perl \
  liblockfile-bin liblogging-stdlog0 liblognorm5 liblwres141 libmpdec2 \
  libnewt0.52 libnpth0 libpam-systemd libpci3 libpipeline1 libpopt0 \
  libpython-stdlib libpython2.7-minimal libpython2.7-stdlib libpython3-stdlib \
  libpython3.5-minimal libpython3.5-stdlib libsasl2-modules libsqlite3-0 \
  libswitch-perl libtext-charwidth-perl libtext-iconv-perl libtext-wrapi18n-perl \
  libusb-0.1-4 libusb-1.0-0 libx11-6 libx11-data libxapian30 libxau6 libxcb1 \
  libxdmcp6 libxext6 libxml2 libxmuu1 linux-image-amd64 locales logrotate \
  lsb-release lsof man-db manpages mime-support ncurses-term netcat-traditional \
  os-prober pciutils pinentry-curses powermgmt-base python python-apt-common \
  python-minimal python2.7 python2.7-minimal python3 python3-apt python3-chardet \
  python3-debian python3-debianbts python3-httplib2 python3-minimal \
  python3-pkg-resources python3-pycurl python3-pysimplesoap python3-reportbug \
  python3-requests python3-six python3-urllib3 python3.5 python3.5-minimal \
  rename reportbug rsyslog sgml-base task-english task-ssh-server tasksel \
  tasksel-data tcpd telnet usbutils util-linux-locales vim-common vim-tiny \
  wamerican whiptail xauth xkb-data xml-core xxd xz-utils vim-runtime
apt-get autoremove -y
apt-get clean
