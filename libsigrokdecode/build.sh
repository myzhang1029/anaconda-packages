#!/bin/bash

./autogen.sh
PKG_CONFIG_PATH="$PREFIX/lib/pkgconfig" CFLAGS="$(python3 -c "from distutils.sysconfig import get_python_inc; print(get_python_inc())")" LDFLAGS="-L$(python3 -c "import distutils.sysconfig as sysconfig; print(sysconfig.get_config_var('LIBDIR'))") $(python3-config --ldflags --embed)" ./configure "--prefix=$PREFIX"
make install
