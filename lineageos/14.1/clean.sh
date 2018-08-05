#!/system/bin/sh

#
# This script is used after Android system boot complete.
#
# Usage:
#   adb root
#   adb push clean.sh /data/local/tmp/
#   adb shell "sh /data/local/tmp/clean.sh"
#

function remount_system() {
  #mount -o rw,remount /system
  mount -o rw,remount -t ext4 /system
  sleep 1
}

function fix_captive() {
  # database keys from: https://github.com/LineageOS/android_frameworks_base/blob/cm-14.1/core/java/android/provider/Settings.java
  settings put global captive_portal_mode 1
  settings put global captive_portal_use_https 1
  settings put global captive_portal_server www.qualcomm.cn
  settings put global captive_portal_http_url http://www.qualcomm.cn/generate_204
  settings put global captive_portal_https_url https://www.qualcomm.cn/generate_204
  settings put global captive_portal_fallback_url http://www.qualcomm.cn/generate_204
}

function clean_apps() {
  # /system/app
  rm -r /system/app/BasicDreams
  rm -r /system/app/BluetoothMidiService
  rm -r /system/app/BookmarkProvider
  rm -r /system/app/Calendar
  rm -r /system/app/CaptivePortalLogin
  rm -r /system/app/CtsShimPrebuilt
  rm -r /system/app/Development
  rm -r /system/app/EasterEgg
  rm -r /system/app/Email
  rm -r /system/app/Exchange2
  rm -r /system/app/HTMLViewer
  rm -r /system/app/LatinIME
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

function clean_misc() {
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

function clean_cache() {
  rm -r /cache/lost+found
  rm -r /cache/recovery

  rm -r /data/anr
  rm -r /data/cache/recovery

  rm /data/dalvik-cache/arm/*
  rm /data/system/dropbox/*
  rm /data/local/tmp/*
}

remount_system
fix_captive
clean_apps
clean_misc
clean_cache
