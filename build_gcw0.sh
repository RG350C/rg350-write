#!/bin/sh

echo "cd . && scons"
(cd . && scons -Q target=gcw0)

rm -f rg350-view-images.opk
mksquashfs ./dist/gcw0/default.gcw0.desktop ./rg350-view-images ./viewimg.png ./assets rg350-view-images.opk -all-root -no-xattrs -noappend -no-exports