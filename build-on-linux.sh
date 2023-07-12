#!/bin/sh

# ensure that LD_LIBRARY_PATH has path to TensorRT;
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/a/opt/TensorRT-8.6.1.6/lib

# to make cuda happy as it does not support some new c++ library shit
export CC=gcc-8
export CXXC=g++-12

# add path to my TensorRT
cmake -B build -S . -DCMAKE_PREFIX_PATH=/home/a/opt/TensorRT-8.6.1.6
cmake --build build --parallel

cmake --install build --prefix /home/a/external



