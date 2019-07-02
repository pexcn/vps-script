#!/bin/bash -e

cat << EOF > /usr/local/bin/cleaner
#!/bin/bash
cd /usr/share/doc && rm -rf *
cd /var/lib/dpkg && rm -f *-old
cd /var/lib/apt/lists && rm -f * 2>/dev/null
cd /var/cache/apt && rm -f * 2>/dev/null
cd /var/cache/apt/archives && rm -f * 2>/dev/null
find /var/log -type f | xargs truncate -s 0
EOF
chmod +x /usr/local/bin/cleaner
