#!/bin/bash
DEB_VERSION="8.5.0.2-$(date +%y%m%d%H%M)"
USERNAME=$(git config user.name)
DEBEMAIL=package@hiveio.com
DEBFULLNAME=HiveIO
dch --distribution unstable --package "drone-test" --newversion $DEB_VERSION "$DEB_VERSION release"
