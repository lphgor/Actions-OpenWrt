#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Update kcptun
sed -i 's/20200103/20200201/g' ./package/lean/kcptun/Makefile

# Enable ssr
echo 0xDEADBEEF > ./package/lean/luci-app-ssr-plus/root/etc/config/google_fu_mode

# Update shadowsocks-libev
sed -i 's/3.2.5/3.3.4/g;s/02273d571b8bea067eefb203a43c142d052042179904f9050a1f20cb8dc5d242/fce47a956fad0c30def9c71821bcec450a40d3f881548e31e66cedf262b89eb1/g' ./feeds/packages/net/shadowsocks-libev/Makefile

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' ./feeds/luci/collections/luci/Makefile

sed -i '/nas/d;/admin_status/d;/99999/d;/openwrt_release/d;/distfeeds/d' ./package/lean/default-settings/files/zzz-default-settings

sed -i 's#http://downloads.openwrt.org/releases/19.07-SNAPSHOT#http://downloads.openwrt.org/releases/19.07.1#g' ./include/version.mk
