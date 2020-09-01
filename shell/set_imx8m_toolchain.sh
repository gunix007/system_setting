#!/bin/sh

IMX8M_TOOLCHAIN=$(echo "$PATH" | grep gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu)
if [  "$IMX8M_TOOLCHAIN" = "" ]; then
    IMX8M_TOOLCHAIN=/opt/gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu
    PATH=$PATH:${IMX8M_TOOLCHAIN}/bin
fi

