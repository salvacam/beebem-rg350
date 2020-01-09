#!/bin/sh

# note you must have built beebem in folder above first
cp ../beebem ./beebem

# Let's make the OPK

OPK_NAME=beebem.opk

echo ${OPK_NAME}

# create default.gcw0.desktop
cat > default.gcw0.desktop <<EOF
[Desktop Entry]
Name=BeebEm
Comment=BBC Micro emulator
Exec=beebem %f
Terminal=false
Type=Application
StartupNotify=true
Icon=beebem
Categories=emulators;
X-OD-NeedsDownscaling=true
EOF

# create opk
FLIST="beebem"
FLIST="${FLIST} default.gcw0.desktop"
FLIST="${FLIST} beebem.png"

FLIST="${FLIST} config"
#FLIST="${FLIST} discs"
FLIST="${FLIST} kbd"
FLIST="${FLIST} resources"
#FLIST="${FLIST} roms"
FLIST="${FLIST} startup.cnf"

rm -f ${OPK_NAME}
mksquashfs ${FLIST} ${OPK_NAME} -all-root -no-xattrs -noappend -no-exports

cat default.gcw0.desktop
rm -f default.gcw0.desktop