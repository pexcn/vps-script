#!/bin/bash -e

cat << EOF > /usr/local/bin/cleaner
#!/bin/bash
cd /usr/share/doc && rm -rf *
cd /var/lib/dpkg && rm -f *-old
cd /var/cache/debconf && rm -f *-old
cd /var/lib/apt/lists && rm -f * 2>/dev/null
cd /var/cache/apt && rm -f * 2>/dev/null
cd /var/cache/apt/archives && rm -f * 2>/dev/null
cd /var && rm -rf backups local mail
find /var/log -type f | xargs truncate -s 0
journalctl --rotate
journalctl --vacuum-time 1s
EOF
chmod +x /usr/local/bin/cleaner
chown root:staff /usr/local/bin/cleaner
