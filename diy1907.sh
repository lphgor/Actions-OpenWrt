#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Update shadowsocks-libev
sed -i 's/3.2.5/3.3.4/g;s/02273d571b8bea067eefb203a43c142d052042179904f9050a1f20cb8dc5d242/fce47a956fad0c30def9c71821bcec450a40d3f881548e31e66cedf262b89eb1/g' ./feeds/packages/net/shadowsocks-libev/Makefile

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' ./feeds/luci/collections/luci/Makefile

sed -i 's#http://downloads.openwrt.org/releases/19.07-SNAPSHOT#http://downloads.openwrt.org/releases/19.07.2#g' ./include/version.mk

sed -i 's#$(STAGING_DIR_HOST)/bin/upx#upx#g' ./package/luci-app-unblockneteasemusic/UnblockNeteaseMusic/Makefile
