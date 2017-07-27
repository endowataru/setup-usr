#!/bin/bash

set -eu

source ./config.sh

cd $SOURCE_PATH

wget -c https://github.com/tmux/tmux/releases/download/$TMUX_VERSION/tmux-$TMUX_VERSION.tar.gz

