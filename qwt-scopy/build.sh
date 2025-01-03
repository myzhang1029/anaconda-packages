#!/bin/sh

mkdir build
cd build
qmake ../qwt.pro
make -j"$(nproc)"
make install
