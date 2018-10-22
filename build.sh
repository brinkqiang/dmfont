#!/bin/sh

# - install depends tools
# yum -y install git
# yum -y install gcc gcc-c++ autoconf libtool automake make
#

# - clone code
# git clone https://github.com/brinkqiang/ttf.git
# pushd ttf
# git submodule update --init --recursive
#

# pushd depends_path
# libtoolize && aclocal && autoheader && autoconf && automake --add-missing
# sh configure
# popd

mkdir ~/.fonts
cp -ri ./fonts/* ~/.fonts
ttmkfdir -d ~/.fonts -o ~/.fonts/fonts.scale
fc-cache
fc-list | grep fixedsys
# popd
