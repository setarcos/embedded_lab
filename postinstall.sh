#!/bin/sh
# 基本安装，选择 xfce 和 ssh server，设置普通用户名为 student，
# 然后使用 root 账号执行本脚本即可。后续需要手动设置的内容包括：
# * 用户中文输入法的设置（可以由用户自己设置）

export PATH=/usr/sbin:$PATH

usermod -G sudo student
apt-get -y install vim git build-essential nfs-kernel-server tftpd-hpa tftp-hpa
sed -i 's/^# \(zh_CN\.UTF-8\)/\1/'  /etc/locale.gen  # 去掉 zh_CN 前面的注释
locale-gen
apt-get -y install fcitx5 fcitx5-chinese-addons
sed -i 's/^#\(greeter-hide-user\)/\1/'  /etc/lightdm/lightdm.conf  # 自动显示用户名
