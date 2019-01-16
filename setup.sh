#!/usr/bin/env bash

##################################
# Create a llvm workspace for dev 
##################################


PATH=$HOME/local/bin:$PATH
export PATH
rm -rf $HOME/llvm-workspace 
mkdir $HOME/llvm-workspace
cd $HOME/llvm-workspace
git clone https://github.com/llvm-mirror/llvm.git
git clone https://github.com/llvm-mirror/clang.git
git clone https://github.com/llvm-mirror/clang-tools-extra.git


### Build llvm ###
mkdir llvm-build-dir
cd llvm-build-dir
cmake -DCMAKE_INSTALL_PREFIX=$HOME/local/ ../llvm/
cmake --build .
cmake --build . --target install
###


### Build clang ###
mkdir ../clang-build-dir
cd ../clang-build-dir
cmake -DCMAKE_INSTALL_PREFIX=$HOME/local/ ../clang/
cmake --build .
cmake --build . --target install
###

