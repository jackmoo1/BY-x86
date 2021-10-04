#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

#change kernel
#sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=5.10/g' target/linux/x86/Makefile

# Moschinadns
#svn co https://github.com/QiuSimons/openwrt-packages/branches/main/mos-chinadns package/new/mos-chinadns
#svn co https://github.com/QiuSimons/openwrt-packages/branches/main/luci-app-moschinadns package/new/luci-app-moschinadns

# Mosdns
#svn co https://github.com/immortalwrt/packages/trunk/net/mosdns feeds/packages/net/mosdns
#ln -sf ../../../feeds/packages/net/mosdns ./package/feeds/packages/mosdns
#sed -i '/config.yaml/d' feeds/packages/net/mosdns/Makefile
#sed -i '/mosdns-init-openwrt/d' feeds/packages/net/mosdns/Makefile
svn co https://github.com/QiuSimons/openwrt-mos/trunk/mosdns package/new/mosdns
svn co https://github.com/QiuSimons/openwrt-mos/trunk/luci-app-mosdns package/new/luci-app-mosdns
