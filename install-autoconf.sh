#! /bin/bash

set -ex

source /entrypoint.sh

wget https://ftp.gnu.org/gnu/autoconf/autoconf-$AUTOCONF_VERSION.tar.gz -O- | tar xz

cd autoconf-$AUTOCONF_VERSION

./configure --prefix=/usr/local/

make -j$(nproc)
make install

cd ..

rm -rf autoconf-$AUTOCONF_VERSION/
