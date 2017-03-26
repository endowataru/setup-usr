#!/bin/bash

set -eu

source config.sh

cd $SOURCE_PATH
git clone --depth 1 https://github.com/neovim/neovim || true

cd neovim
git checkout master
git pull

