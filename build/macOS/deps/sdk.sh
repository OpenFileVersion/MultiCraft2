#!/bin/bash -e

# This file sets the appropriate compiler and flags for compiling for macOS without XCode
sdk=macosx
osver=10.11

export OSX_ARCHES="x86_64 arm64"
arches="-arch x86_64 -arch arm64"

export OSX_COMPILER=$(xcrun --sdk $sdk --find clang)
export OSX_CC=$OSX_COMPILER
export OSX_CXX=$OSX_COMPILER
export OSX_FLAGS="-isysroot $(xcrun --sdk $sdk --show-sdk-path) $arches -mmacosx-version-min=$osver -fvisibility=hidden -fdata-sections -ffunction-sections -fno-unwind-tables -fno-asynchronous-unwind-tables -Ofast"
