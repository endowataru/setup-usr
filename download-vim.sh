#!/bin/bash

set -eu

source ./config.sh

cd $SOURCE_PATH
git clone --depth 1 https://github.com/vim/vim.git || true

cd vim
git checkout master && git pull

