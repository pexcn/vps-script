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
	/system/app/BuiltInPrintService
	/system/app/Calendar
	/system/app/CarrierDefaultApp
	/system/app/CompanionDeviceManager
	/system/app/CtsShimPrebuilt
	/system/app/Development
	/system/app/EasterEgg
	/system/app/Email
	/system/app/Exchange2
	/system/app/HTMLViewer
	/system/app/LatinIME
	/system/app/LineageBlackAccent
	/system/app/LineageBlueAccent
	/system/app/LineageOrangeAccent
	/system/app/LineagePinkAccent
	/system/app/LineagePurpleAccent
	/system/app/LineageRedAccent
	/system/app/LineageBrownAccent
	/system/app/PacProcessor
	/system/app/PhotoTable
	/system/app/PrintRecommendationService
	/system/app/PrintSpooler
	/system/app/Profiles
	/system/app/SimAppDialog
	/system/app/Stk
	/system/app/Terminal
	/system/app/Traceur
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
	/system/recovery-from-boot.*
	/system/etc/recovery-resource.dat
	/system/etc/init.d/*

	/cache/recovery
	/data/cache/recovery
	/data/anr/*
	/data/dalvik-cache/arm/*
	/data/system/dropbox/*
	/data/local/traces/*
	/data/local/tmp/*
EOF
}

mount_system
clean_system
