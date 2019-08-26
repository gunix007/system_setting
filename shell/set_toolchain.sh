#!/bin/sh

TOOLCHAIN_PATH=$(echo "$PATH" | grep arm-2010.09)
if [  "$TOOLCHAIN_PATH" = "" ]; then
    TOOLCHAIN_PATH=/opt/arm-2010.09
    PATH=$PATH:${TOOLCHAIN_PATH}/bin
fi

