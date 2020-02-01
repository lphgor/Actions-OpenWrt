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
#sed -i 's/20190515/20200103/g' ./package/lean/kcptun/Makefile

# Enable ssr
echo 0xDEADBEEF > ./package/lean/luci-app-ssr-plus/root/etc/config/google_fu_mode

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' ./feeds/luci/collections/luci/Makefile

sed -i '/nas/d;/admin_status/d;/99999/d;/openwrt_release/d;/distfeeds/d' ./package/lean/default-settings/files/zzz-default-settings

sed -i 's#http://downloads.openwrt.org/releases/19.07-SNAPSHOT#http://downloads.openwrt.org/releases/19.07.1#g' ./include/version.mk
