#!/bin/bash -e

apt-get purge -y \
  apparmor aptitude aptitude-common bsdmainutils busybox bzip2 \
  cloud-guest-utils cloud-init cloud-utils cloud-image-utils cron \
  dbus libpam-systemd packagekit packagekit-tools policykit-1 tuned \
  hdparm libappstream4 libcpupower1 libglib2.0-bin libgstreamer1.0-0 \
  libpci3 libpolkit-agent-1-0 libpolkit-backend-1-0 libstemmer0d ethtool \
  libpolkit-gobject-1-0 linux-cpupower python3-decorator python3-pyudev \
  virt-what debconf-i18n distro-info-data lsb-release python3-distro-info \
  python3-software-properties software-properties-common unattended-upgrades \
  gir1.2-glib-2.0 gir1.2-packagekitglib-1.0 iso-codes libgirepository-1.0-1 \
  libpackagekit-glib2-18 python-apt-common python3-apt python3-dbus python3-gi \
  python3-pycurl dmidecode euca2ools firmware-linux-free gawk gdbm-l10n gdisk \
  genisoimage ifenslave isc-dhcp-common joe kbd libaio1 qemu-utils libdbus-1-3 \
  libboost-iostreams1.67.0 libboost-system1.67.0 libcwidget3v5 libestr0 \
  liblognorm5 rsyslog libfastjson4 libglib2.0-0 qemu-guest-agent libglib2.0-data \
  libgpm2 vim libicu63 libxml2 libxslt1.1 python-lxml liblocale-gettext-perl \
  tasksel tasksel-data libmpdec2 libpython3-stdlib libpython3.7-stdlib python3 \
  python3-asn1crypto python3-blinker python3-certifi python3-cffi-backend \
  python3-chardet python3-configobj python3-cryptography python3-idna \
  python3-jinja2 python3-json-pointer python3-jsonpatch python3-jsonschema \
  python3-jwt python3-markupsafe python3-oauthlib python3-pkg-resources \
  python3-requests python3-six python3-urllib3 python3-yaml python3.7 \
  libnewt0.52 whiptail libopts25 ntp libpopt0 logrotate libpython-stdlib python \
  python-certifi python-chardet python-idna python-pkg-resources python-yaml \
  python-requests python-setuptools python-six python-urllib3 python-requestbuilder \
  libpython2-stdlib python2 libpython2.7-minimal libpython2.7-stdlib python-minimal \
  python2-minimal python2.7 python2.7-minimal libpython3.7-minimal python3-minimal \
  python3.7-minimal libsasl2-modules libsigc++-2.0-0v5 libsqlite3-0 screen \
  libtext-charwidth-perl libtext-iconv-perl libtext-wrapi18n-perl libxapian30 \
  libutempter0 libyaml-0-2 libc-l10n locales locales-all mime-support most \
  pigz powermgmt-base sudo unscd vim-common vim-runtime vim-tiny xxd xz-utils
apt-get clean
