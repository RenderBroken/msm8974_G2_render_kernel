#!/sbin/sh
#
# This leverages the loki_patch utility created by djrbliss
# See here for more information on loki: https://github.com/djrbliss/loki
#

dd if=/dev/block/platform/msm_sdcc.1/by-name/aboot of=/tmp/aboot.img
/tmp/loki_tool patch boot /tmp/aboot.img /tmp/boot.img /tmp/boot.lok || exit 1
/tmp/loki_tool flash boot /tmp/boot.lok || exit 1
rm -rf /tmp/loki_tool /tmp/boot.lok
exit 0
