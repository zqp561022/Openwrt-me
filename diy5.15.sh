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
sed -i 's/192.168.1.1/192.168.0.11/g' package/base-files/files/bin/config_generate
sed -i 's/KERNEL_PATCHVER:=6.1/KERNEL_PATCHVER:=5.15/g' ./target/linux/x86/Makefile
sed -i 's/KERNEL_PATCHVER:=6.2/KERNEL_PATCHVER:=5.15/g' ./target/linux/x86/Makefile

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
# sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default
git clone https://github.com/jerrykuku/lua-maxminddb.git  package/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git  package/luci-app-vssr
git clone https://github.com/fw876/helloworld.git package/ssr
# git clone https://github.com/immortalwrt/homeproxy.git package/luci-app-homeproxy
git clone https://github.com/firker/diy-ziyong.git package/diy-ziyong
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/luci-theme-edge
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  package/luci-theme-argon-18.06
git clone https://github.com/gngpp/luci-theme-neobird.git package/luci-theme-neobird
# git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd
find ./ | grep Makefile | grep mosdns | xargs rm -f
# git clone https://github.com/firkerword/openwrt-mos.git package/openwrt-mos
# git clone https://github.com/QiuSimons/openwrt-mos.git package/openwrt-mos
git clone https://github.com/sbwml/luci-app-mosdns.git package/luci-app-mosdns
# find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
# git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/passwall
git clone -b luci-smartdns-new-version https://github.com/xiaorouji/openwrt-passwall.git package/passwall
# git clone https://github.com/firkerword/luci-app-mosdns.git package/mosdns
# git clone https://github.com/firkerword/luci-app-smartdns.git package/luci-app-smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
# git clone https://github.com/firkerword/smartdns.git package/smartdns
git clone https://github.com/pymumu/openwrt-smartdns.git package/openwrt-smartdns
# git clone https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2
# git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
# git clone https://github.com/sbwml/luci-app-alist.git package/luci-app-alist
# git clone https://github.com/firkerword/luci-app-lucky.git package/lucky
# git clone https://github.com/sirpdboy/luci-app-lucky.git package/lucky
# git clone https://github.com/gdy666/luci-app-lucky.git package/lucky
# svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-bypass package/luci-app-bypass
# git clone https://github.com/dwj0/luci-app-sms-tool.git package/luci-app-sms-tool
# git clone -b master https://github.com/vernesong/OpenClash.git package/OpenClash
# git clone https://github.com/linkease/istore.git package/istore
# git clone https://github.com/linkease/istore-ui.git package/istore-ui
svn co https://github.com/kiddin9/openwrt-packages/trunk/adguardhome package/adguardhome
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-adguardhome package/luci-app-adguardhome
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
