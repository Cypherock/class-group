#!/bin/bash

# stop script on error
set -e

# apt install g++ libgmp-dev libssl-dev cmake

ROOT=$(pwd)
BICYCL=${ROOT}/BICYCL

rm -rf "${BICYCL}/miracl"
mkdir -p "${BICYCL}/miracl"
cp "${ROOT}/miracl-core/cpp/"* "${BICYCL}/miracl/"

cd "${BICYCL}/miracl/"
echo -e "31\n0" | python3 config64.py

mv core.a libcore.a

cd "${BICYCL}"
cmake -B build -G Ninja -DCMAKE_INSTALL_INCLUDEDIR="include"
cmake --build build/ -- install


cd "${ROOT}"
cmake -B build -G Ninja
cmake --build build/

mkdir -p config

cd bin
./main
