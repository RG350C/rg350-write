#!/bin/bash

export PATH=$PATH:/opt/gcw0-toolchain/usr/bin/

make -f Makefile.gcw0 clean

echo "cd . && scons -c"
(cd . && scons -c)

echo "rm -f ./config.log"
rm -f ./config.log

echo "rm -rf ./.scon*"
rm -rf ./.scon*

find . -type f -iname \*.o -delete

find . -type f -iname rg350-view-images -delete


rm build/rg350-view-images
rm build/rg350-view-images.opk
