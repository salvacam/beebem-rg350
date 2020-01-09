# beebem RG350

Port of beebem, a BBC Micro Model B emulator, for the RG350 handheld running Open Dingux.

Based on RS-97 port, which in turn is based on the v0.6-1 of the GP2X port, the source of both can be found at:
 * [https://github.com/thefossilrecord/beebem-rs97](https://github.com/thefossilrecord/beebem-rs97)
 * [http://beebem-unix.bbcmicro.com/download.html](http://beebem-unix.bbcmicro.com/download.html)


## Compile
Compile with:
`make -f Makefile_RG350`

You'll need a GCWZero toolchain to build from source.
[http://www.gcw-zero.com/develop](http://www.gcw-zero.com/develop)

## Create Distributable
* After building the '`beebem`' binary, you then need to package for RG350 as an OPK file
To make the OPK:
`cd dist`
`./make_opk.sh`


## Installation
To install package onto the RG350...

* Copy beebem.opk to `/media/sdcard/APPS/` folder

* Running beebem at least once will create the ~/.beebem/roms if not already present on your device.
* Put ROMs with _exactly_ these names into ~/.beebem/roms
`'acorn_dnfs'` - Acorn DNFS 1.2 (chip ID# 201666)
`'os12'`       - Base operating system for BBC Model B (v1.2)
`'basic'`      - BBC Basic Programming Language (v2)

## Usage
* Put Disk Images, for example SSD files, e.g. into /media/sdcard/ROMS/BEEB/
