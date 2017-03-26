#!/bin/bash

set -eu

source ./config.sh

for x in $INSTALL_LIST
do
    ./install-$x.sh
done

