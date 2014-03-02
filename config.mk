# dwm version
VERSION = 6.0

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

# Xinerama
XINERAMALIBS =  -lXinerama
XINERAMAFLAGS = -DXINERAMA

# includes and libs
LIBS = -lc -lX11 ${XINERAMALIBS}

# flags
CPPFLAGS += -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}
#CFLAGS = -g -std=c99 -pedantic -Wall -O0 ${INCS} ${CPPFLAGS}
CFLAGS += -std=c99 -pedantic -Wall ${CPPFLAGS}
#LDFLAGS = -g ${LIBS}
LDFLAGS += -s ${LIBS}

# Solaris
#CFLAGS = -fast ${INCS} -DVERSION=\"${VERSION}\"
#LDFLAGS = ${LIBS}

# compiler and linker
CC = cc
