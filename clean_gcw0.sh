#!/bin/bash

export PATH=$PATH:/opt/gcw0-toolchain/usr/bin/

make -f Makefile.gcw0 clean
rm build/rg350-write.dge
rm build/rg350-write.opk
