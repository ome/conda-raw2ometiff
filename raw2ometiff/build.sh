#!/bin/bash
set -eu

pkg=raw2ometiff-$PKG_VERSION-$PKG_BUILDNUM

bindir=$PREFIX/share/$pkg/bin
mkdir -p $bindir $PREFIX/bin
cp $SRC_DIR/bin/raw2ometiff $bindir/

ln -s ../share/$pkg/bin/raw2ometiff $PREFIX/bin/raw2ometiff
