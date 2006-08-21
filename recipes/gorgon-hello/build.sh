#!/bin/sh

BUILD_DIR="$SRC_DIR/../build_dir"

rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR"
cd "$BUILD_DIR"

cmake "$SRC_DIR"
make Hello

$PYTHON setup.py install
