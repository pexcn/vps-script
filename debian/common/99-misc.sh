#!/bin/bash

# timezone
ln -sf /usr/share/zoneinfo/Asia/Taipei /etc/localtime
dpkg-reconfigure -f noninteractive tzdata

# ipv4 first
sed -i "s/#precedence ::ffff:0:0\/96  100/precedence ::ffff:0:0\/96  100/g" /etc/gai.conf

# disable boot entries
#systemctl list-unit-files | grep enabled
systemctl mask getty@.service
#systemctl mask getty@tty2.service
#systemctl mask getty@tty3.service
#systemctl mask getty@tty4.service
#systemctl mask getty@tty5.service
#systemctl mask getty@tty6.service
systemctl disable --now apparmor.service
systemctl disable --now apt-daily.timer apt-daily-upgrade.timer

# motd
cat << EOF > /etc/motd

Welcome to VPS!

EOF

# cleaner
cat << EOF > /usr/local/bin/cleaner
#!/bin/bash
cd /usr/share/doc && rm -rf *
cd /var/lib/dpkg && rm -f *-old
cd /var/cache/debconf && rm -f *-old
cd /var/lib/apt/lists && rm -f * 2>/dev/null
cd /var/cache/apt && rm -f * 2>/dev/null
cd /var/cache/apt/archives && rm -f * 2>/dev/null
cd /var && rm -rf backups local mail
find /var/log -maxdepth 1 -type f | xargs truncate -s 0
journalctl --rotate
journalctl --vacuum-time 1s
EOF
chmod +x /usr/local/bin/cleaner
chown root:staff /usr/local/bin/cleaner
