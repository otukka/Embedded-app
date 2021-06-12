#!/bin/bash

if [[ -d "build" ]]; then
    rm -rf build
fi

mkdir build
cd build

cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_TOOLCHAIN_FILE=../aarch64-toolchain.cmake ..


make VERBOSE=1