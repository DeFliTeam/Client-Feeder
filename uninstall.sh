#!/bin/bash
set -x

IPATH=/usr/local/share/defliteam

systemctl disable --now defli-mlat
systemctl disable --now defli-mlat2 &>/dev/null
systemctl disable --now defli-feed

if [[ -d /usr/local/share/tar1090/html-defli ]]; then
    bash /usr/local/share/tar1090/uninstall.sh defli
fi

rm -f /lib/systemd/system/defli-mlat.service
rm -f /lib/systemd/system/defli-mlat2.service
rm -f /lib/systemd/system/defli-feed.service

cp -f "$IPATH/defli-uuid" /tmp/defli-uuid
rm -rf "$IPATH"
mkdir -p "$IPATH"
mv -f /tmp/defli-uuid "$IPATH/defli-uuid"

set +x

echo -----
echo "defli feed scripts have been uninstalled!"
