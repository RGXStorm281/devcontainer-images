#!/bin/bash

# exit immediately if a command exits with non-zero status
set -e

# install git
apt update && apt install -y git

# download DPDK source
mkdir ~/dpdk
git clone git://dpdk.org/dpdk ~/dpdk

# checkout the latest stable release (no -rc in version number)
cd ~/dpdk
latest_release="$(git tag | grep -E "v[0-9.]+$" | tail -n 1)"
git checkout ${latest_release}

# install build dependencies
apt install -y \
    build-essential \
    meson \
    python3-pyelftools \
    libnuma-dev \
    libelf-dev \
    libpcap-dev \
    pciutils

# compile DPDK
# platform "generic" is only needed because the devcontainer CPU is not recognized as supported vendor.
# optional: build examples as well
meson setup build -Dplatform=generic # -Dexamples=all
cd build
meson compile

# install DPDK
meson install
ldconfig