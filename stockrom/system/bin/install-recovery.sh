#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 23183360 f4014451b6dedd5352b162893f7d9b26328a64b0 19918848 d2f0d046db879939e9f5e6364f647006f3a0de0e
fi

if ! applypatch -c EMMC:/dev/block/platform/15570000.ufs/by-name/recovery:23183360:f4014451b6dedd5352b162893f7d9b26328a64b0; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/15570000.ufs/by-name/bootimg:19918848:d2f0d046db879939e9f5e6364f647006f3a0de0e EMMC:/dev/block/platform/15570000.ufs/by-name/recovery f4014451b6dedd5352b162893f7d9b26328a64b0 23183360 d2f0d046db879939e9f5e6364f647006f3a0de0e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
