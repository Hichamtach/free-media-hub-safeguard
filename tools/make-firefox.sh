#!/usr/bin/env bash

set -e

# Define build destination
DES=dist/build/Free-Media-Hub-SafeGuard.firefox
rm -rf $DES
mkdir -p $DES

# Copy files specific to Firefox extension
cp -R platform/firefox/* $DES/

# Create a versioned XPI package
pushd dist/build
zip -r Free-Media-Hub-SafeGuard_"$1".firefox.xpi Free-Media-Hub-SafeGuard.firefox
popd
