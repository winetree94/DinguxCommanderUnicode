#!/bin/sh

OPK_NAME=dingux_commander_unicode.opk

echo ${OPK_NAME}

# create default.gcw0.desktop
cat > default.gcw0.desktop <<EOF
[Desktop Entry]
Name=DinguxCmdr-Unicode
Comment=File management tool
Exec=DinguxCommander
Terminal=false
Type=Application
StartupNotify=true
Icon=res/icon
Categories=applications;
EOF

# create opk
FLIST="output/opendingux-gcw0/DinguxCommander"
FLIST="${FLIST} default.gcw0.desktop"
FLIST="${FLIST} res"

rm -f ${OPK_NAME}
mksquashfs ${FLIST} dist/${OPK_NAME} -all-root -no-xattrs -noappend -no-exports

cat default.gcw0.desktop
rm -f default.gcw0.desktop