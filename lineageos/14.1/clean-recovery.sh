#!/sbin/sh

#
# Usage:
#   adb push clean-recovery.sh /data/local/tmp/
#   adb shell "chmod +x /data/local/tmp/clean-recovery.sh"
#   adb shell "/data/local/tmp/clean-recovery.sh"
#

mount_system() {
  mount /system
  sleep 1
}

clean_apps() {
  cat <<- EOF | xargs rm -rf
	/system/app/BasicDreams
	/system/app/BluetoothMidiService
	/system/app/BookmarkProvider
	/system/app/Calendar
	/system/app/CaptivePortalLogin
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
EOF
}

clean_misc() {
  cat <<- EOF | xargs rm -rf
	/system/addon.d
	/system/tts

	/system/recovery-from-boot.*
	/system/etc/recovery-resource.dat
	/system/etc/init.d/*

	/system/media/audio/ui/camera_click.ogg
	/system/media/audio/ui/camera_focus.ogg
	/system/media/audio/ui/LowBattery.ogg
	/system/media/audio/ui/VideoRecord.ogg
	/system/media/audio/ui/VideoStop.ogg
EOF
}

clean_cache() {
  cat <<- EOF | xargs rm -rf
	/cache/lost+found
	/cache/recovery

	/data/anr
	/data/cache/recovery

	/data/dalvik-cache/arm/*
	/data/system/dropbox/*
	/data/local/tmp/*
EOF
}

mount_system
clean_apps
clean_misc
clean_cache
