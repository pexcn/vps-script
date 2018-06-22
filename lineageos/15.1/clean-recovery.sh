#!/sbin/sh

#
# This script is used after ROM upgrade in recovery mode.
#
# Usage:
#   adb push clean-recovery.sh /data/local/tmp/
#   adb shell "sh /data/local/tmp/clean-recovery.sh"
#

mount_system() {
  #mount -o rw,remount -t ext4 /dev/block/bootdevice/by-name/cache /cache
  #mount -o rw,remount -t ext4 /dev/block/bootdevice/by-name/userdata /data
  mount -o rw -t ext4 /dev/block/bootdevice/by-name/system /system
  sleep 1
}

clean_apps() {
  # /system/app
  rm -r /system/app/BasicDreams
  rm -r /system/app/BluetoothMidiService
  rm -r /system/app/BookmarkProvider
  rm -r /system/app/BuiltInPrintService
  rm -r /system/app/Calendar
  rm -r /system/app/CaptivePortalLogin
  rm -r /system/app/CarrierDefaultApp
  rm -r /system/app/CompanionDeviceManager
  rm -r /system/app/CtsShimPrebuilt
  rm -r /system/app/Development
  rm -r /system/app/EasterEgg
  rm -r /system/app/Email
  rm -r /system/app/HTMLViewer
  rm -r /system/app/LatinIME
  rm -r /system/app/LineageBlackAccent
  rm -r /system/app/LineageBlueAccent
  rm -r /system/app/LineageCyanAccent
  rm -r /system/app/LineageOrangeAccent
  rm -r /system/app/LineagePinkAccent
  rm -r /system/app/LineagePurpleAccent
  rm -r /system/app/LineageRedAccent
  rm -r /system/app/LineageBrownAccent
  rm -r /system/app/LineageYellowAccent
  rm -r /system/app/PacProcessor
  rm -r /system/app/PhotoTable
  rm -r /system/app/PicoTts
  rm -r /system/app/PrintRecommendationService
  rm -r /system/app/PrintSpooler
  rm -r /system/app/Profiles
  rm -r /system/app/Stk
  rm -r /system/app/Terminal
  rm -r /system/app/UpdateSetting
  rm -r /system/app/WAPPushManager
  rm -r /system/app/WallpaperBackup
  rm -r /system/app/qcrilmsgtunnel
  rm -r /system/app/shutdownlistener

  # /system/priv-app
  rm -r /system/priv-app/AudioFX
  rm -r /system/priv-app/BackupRestoreConfirmation
  rm -r /system/priv-app/CalendarProvider
  rm -r /system/priv-app/CellBroadcastReceiver
  rm -r /system/priv-app/CtsShimPrivPrebuilt
  rm -r /system/priv-app/EmergencyInfo
  rm -r /system/priv-app/InputDevices
  rm -r /system/priv-app/OmaDmclient
  rm -r /system/priv-app/OneTimeInitializer
  rm -r /system/priv-app/ProxyHandler
  rm -r /system/priv-app/SharedStorageBackup
  rm -r /system/priv-app/SprintHiddenMenu
  rm -r /system/priv-app/Tag
  rm -r /system/priv-app/Updater
}

clean_misc() {
  rm -r /system/addon.d
  rm -r /system/tts

  rm /system/recovery-from-boot.*
  rm /system/etc/recovery-resource.dat
  rm /system/etc/init.d/*

  rm /system/media/audio/ui/camera_click.ogg
  rm /system/media/audio/ui/camera_focus.ogg
  rm /system/media/audio/ui/LowBattery.ogg
  rm /system/media/audio/ui/VideoRecord.ogg
  rm /system/media/audio/ui/VideoStop.ogg
}

clean_cache() {
  rm -r /cache/lost+found
  rm -r /cache/recovery

  rm -r /data/anr
  rm -r /data/cache/recovery

  rm /data/dalvik-cache/arm/*
  rm /data/system/dropbox/*
  rm /data/local/tmp/*
}

mount_system
clean_apps
clean_misc
clean_cache
