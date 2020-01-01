# OPTIONAL DEFINES:
# -DHW_SCALING: Enables hardware scaling (only for systems which support it)
# -DROM_BROWSER: Enables internal rom browser (gb and gbc romdirs are hardcoded for each system)
# -DPOWEROFF: Replaces the "Quit" option with a "Power Off" option.
import os

target = ARGUMENTS.get('target', 0)
if target == 'gcw0':
    include_path = ' -I/opt/gcw0-toolchain/usr/mipsel-gcw0-linux-uclibc/sysroot/usr/include'
    bin_path = '/opt/gcw0-toolchain/usr/bin/mipsel-linux-'
    sdl_path = '/opt/gcw0-toolchain/usr/mipsel-gcw0-linux-uclibc/sysroot/usr/bin/'
    version_defines = ' -DVERSION_GCW0' 
    extra_cflags = ''
    print "Building rg350-view-images with GCW Zero toolchain..."
elif target == 'od':
    include_path = ' -Iopt/opendingux-toolchain/usr/include'
    bin_path = '/opt/opendingux-toolchain/usr/bin/mipsel-linux-'
    sdl_path = '/opt/opendingux-toolchain/usr/bin/'
    version_defines = ''
    extra_cflags = ''
    print "Building rg350-view-images with OpenDingux toolchain..."
elif target == 'retrofw':
    include_path = ' -I/opt/rs97-toolchain/mipsel-buildroot-linux-uclibc/sysroot/usr/include'
    bin_path = '/opt/rs97-toolchain/bin/mipsel-linux-'
    sdl_path = '/opt/rs97-toolchain/mipsel-buildroot-linux-uclibc/sysroot/usr/bin/'
    version_defines = ' -DVERSION_RETROFW'
    extra_cflags = ' -Ofast -fdata-sections -mno-fp-exceptions -mno-check-zero-division -mframe-header-opt -fno-common -mips32 -fno-PIC -mno-abicalls -flto -fwhole-program'
    print "Building rg350-view-images with RetroFW toolchain..."
else:
    SDLPATH = os.popen("sdl-config --cflags").read().strip()
    print "Setting SDLPath to ",SDLPATH

    SDLLIBS = os.popen("sdl-config --libs").read().strip()
    print "Setting SDLLibs to ",SDLLIBS

    include_path = ''
    bin_path = ''
    sdl_path = ''
    version_defines = ''
    extra_cflags = ' -lmingw32'
    print "Building rg350-view-images with GCC Linux..."

global_cflags = ARGUMENTS.get('CFLAGS', '-Wall -Wextra -O2 -fomit-frame-pointer -ffunction-sections -ffast-math -fsingle-precision-constant -g0' + extra_cflags + include_path)
global_cxxflags = ARGUMENTS.get('CXXFLAGS', global_cflags + ' -fno-exceptions -fno-rtti')
global_linkflags = ARGUMENTS.get('LINKFLAGS', '-Wl,--gc-sections')
global_defines = ' -DHAVE_STDINT_H' + version_defines

vars = Variables()
vars.Add('CC')
vars.Add('CXX')

env = Environment(CPPPATH = ['.'],
                  CFLAGS = global_cflags + global_defines,
                  CXXFLAGS = global_cxxflags + global_defines,
                  CC = bin_path + 'gcc',
                  CXX = bin_path + 'g++',
                  LINKFLAGS = global_linkflags + ' -lSDL_image -lSDL_mixer',
                  variables = vars)

print "Building for OS ", env['PLATFORM']

# Linux build
if env['PLATFORM'] == 'posix' :    
	print "Setting Linux specific flags"
    
	# linker flags for mac and frameworks we need
	# we define DARWIN for conditional includes in the .cpp and .h files
	env.Append(CCFLAGS = ' -DLINUX')

	# we only need to add imageMagick for mac
	LIBS = ['','SDLmain','SDL','SDL_image','SDL_mixer'] 
	env.Append(LIBS=LIBS)

	# use the -l command to include the library
	# and look in /usr/lib for  imageMagick
	LIBPATH=['/usr/lib','/usr/X11R6/lib']
	env.Append(LIBPATH=LIBPATH)


env.ParseConfig(sdl_path + 'sdl-config --cflags --libs')

sourceFiles = Split('''
		   ''')

conf = env.Configure()
conf.CheckLib('z')
conf.Finish()

env.Program('rg350-view-images',
            [env.Object('main.c',
                        CPPDEFINES = env['CPPDEFINES'])]
            + sourceFiles)
