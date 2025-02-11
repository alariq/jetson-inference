#!/bin/sh

rm -rf ./build
mkdir build
cd ./build
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -DBUILD_DEPS=NO -DCMAKE_INSTALL_PREFIX=${HOME}/external-test ..
make -j4
cd ..




