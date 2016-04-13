#! /bin/sh

export CFLAGS="-Ofast -fomit-frame-pointer -m64 -mtune=westmere"
export PREFIX="$(pwd)/libsodium-win64"

make distclean > /dev/null

./configure --prefix="$PREFIX" --exec-prefix="$PREFIX" \
            --host=x86_64-w64-mingw32 && \
make && \
make check && \
make install
