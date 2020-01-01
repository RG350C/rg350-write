#!/bin/sh

echo "cd . && scons"
(cd . && scons -Q target=gcc)