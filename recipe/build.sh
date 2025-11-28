#!/bin/bash

set -ex

cp $BUILD_PREFIX/share/gnuconfig/config.* .
autoreconf --install --force
./configure --help

# Enable IPV6 constants on macOS
# c.f. https://krbdev.mit.edu/rt/Ticket/History.html?id=8349
if [[ "${target_platform}" == *"osx"* ]]; then
    export CFLAGS="${CFLAGS} -D__APPLE_USE_RFC_3542"
fi

./configure --prefix=${PREFIX} --disable-static --disable-gssapi
make --jobs="${CPU_COUNT}"
make install
