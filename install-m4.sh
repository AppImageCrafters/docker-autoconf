#! /bin/bash

set -ex

source /entrypoint.sh

wget http://ftp.gnu.org/gnu/m4/m4-"$M4_VERSION".tar.gz -O- | tar xz

cd m4-$M4_VERSION

./configure --prefix=/usr/local/

make -j$(nproc)
make install

cd ..

rm -rf m4-$M4_VERSION/
