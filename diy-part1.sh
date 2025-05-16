#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

feed() {
    if [ -n "$3" ] ;then
        echo "src-git $1 $2;$3" >>feeds.conf.default
    else
        echo "src-git $1 $2" >>feeds.conf.default
    fi
}

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
feed nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git
