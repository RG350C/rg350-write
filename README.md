# Install SDL 1.2.12 on ubuntu 18
sudo apt-get install libsdl1.2-dev libsdl-image1.2-dev libsdl-mixer1.2-dev libsdl-gfx1.2-dev libsdl-ttf-gst libsdl-ttf2.0-dev
apt-cache search libsdl


# Opciones para el enlazador
-lmingw32 -lSDLmain -lSDL -lSDL_image -lSDL_ttf -lSDL_mixer -lSDL_gfx


# Visual Studio Code + GCC + GW0/RG350
https://medium.com/@tarangnpatel/visual-studio-code-c-programming-on-linux-c990b9705314
http://songofstorm.com/tutorial-gcw-zero/

# SAMPLE:
A simple SDL image viewer for GCW Zero.

# Compilation:
gcc -O2 main.c -lSDLmain -lSDL -lSDL_image -lSDL_ttf -lSDL_mixer -lSDL_gfx -o ./build/go

# LINUX SDL1.2: 
gcc main.c -c; gcc main.o -o ./build/go -lSDLmain -lSDL -lSDL_image -lSDL_ttf -lSDL_mixer -lSDL_gfx;
./build/go

# GWC0/RG350 SDL1.2: 
/opt/gcw0-toolchain/usr/bin/mipsel-linux-gcc -O2 main.c -I/opt/gcw0-toolchain/usr/mipsel-gcw0-linux-uclibc/sysroot/usr/include/SDL/ -lSDLmain -lSDL -lSDL_image -lSDL_ttf -lSDL_mixer -lSDL_gfx -o ./build/go;
./build/go

# Network config
sudo ifconfig -a
sudo ifconfig enp0s21f0u2c2 10.1.1.1

# Usage:
viewimg image.png

# License:
MIT License
