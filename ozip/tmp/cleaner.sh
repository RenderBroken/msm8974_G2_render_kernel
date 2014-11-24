#!/sbin/sh

# clean init.d scripts
INITD_DIR=/system/etc/init.d

# slim
rm -rf $INITD_DIR/01mpdecision

# remove the binaries as they are no longer needed. (kernel handled)
if [ -e /system/bin/mpdecision ] ; then
	busybox mv /system/bin/mpdecision /system/bin/mpdecision_bck
fi
#if [ -e /system/bin/thermald ] ; then
#	busybox mv /system/bin/thermald /system/bin/thermald_bck
#fi

# remove dalvik cache
#rm -rf /data/dalvik-cache
#rm -rf /cache/dalvik-cache
