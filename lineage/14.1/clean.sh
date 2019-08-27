#!/system/bin/sh

#
# Usage:
#   adb root
#   adb push clean.sh /data/local/tmp/
#   adb shell "chmod +x /data/local/tmp/clean.sh"
#   adb shell "/data/local/tmp/clean.sh"
#

mount_system() {
  mount -o rw,remount /system
  sleep 1
}

fix_captive() {
  # database keys from: https://github.com/LineageOS/android_frameworks_base/blob/cm-14.1/core/java/android/provider/Settings.java
  settings put global captive_portal_mode 1
  settings put global captive_portal_use_https 1
  settings put global captive_portal_server www.qualcomm.cn
  settings put global captive_portal_http_url http://www.qualcomm.cn/generate_204
  settings put global captive_portal_https_url https://www.qualcomm.cn/generate_204
  settings put global captive_portal_fallback_url http://www.qualcomm.cn/generate_204
}

clean_system() {
  for file in $(_get_delete_list); do
    rm -r "$file"
  done
}

_get_delete_list() {
  cat <<- EOF
	/system/app/BasicDreams
	/system/app/BluetoothMidiService
	/system/app/BookmarkProvider
	/system/app/Calendar
	/system/app/CtsShimPrebuilt
	/system/app/Development
	/system/app/EasterEgg
	/system/app/Email
	/system/app/Exchange2
	/system/app/HTMLViewer
	/system/app/LatinIME
	/system/app/PacProcessor
	/system/app/PhotoTable
	/system/app/PicoTts
	/system/app/PrintRecommendationService
	/system/app/PrintSpooler
	/system/app/Profiles
	/system/app/Stk
	/system/app/Terminal
	/system/app/UpdateSetting
	/system/app/WAPPushManager
	/system/app/WallpaperBackup
	/system/app/qcrilmsgtunnel
	/system/app/shutdownlistener

	/system/priv-app/AudioFX
	/system/priv-app/BackupRestoreConfirmation
	/system/priv-app/CalendarProvider
	/system/priv-app/CellBroadcastReceiver
	/system/priv-app/CtsShimPrivPrebuilt
	/system/priv-app/EmergencyInfo
	/system/priv-app/InputDevices
	/system/priv-app/OmaDmclient
	/system/priv-app/OneTimeInitializer
	/system/priv-app/ProxyHandler
	/system/priv-app/SharedStorageBackup
	/system/priv-app/SprintHiddenMenu
	/system/priv-app/Tag
	/system/priv-app/Updater

	/system/media/audio/ui/camera_click.ogg
	/system/media/audio/ui/camera_focus.ogg
	/system/media/audio/ui/LowBattery.ogg
	/system/media/audio/ui/VideoRecord.ogg
	/system/media/audio/ui/VideoStop.ogg
	/system/addon.d
	/system/tts
	/system/recovery-from-boot.*
	/system/etc/recovery-resource.dat
	/system/etc/init.d/*

	/cache/recovery
	/data/cache/recovery
	/data/anr/*
	/data/dalvik-cache/arm/*
	/data/system/dropbox/*
	/data/local/tmp/*
EOF
}

mount_system
fix_captive
clean_system