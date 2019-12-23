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
sed -i 's/20190515/20191219/g' ./package/lean/kcptun/Makefile

# Enable 55r
echo 0xDEADBEEF > ./package/lean/luci-app-ssr-plus/root/etc/config/google_fu_mode

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' ./feeds/luci/collections/luci/Makefile
        
