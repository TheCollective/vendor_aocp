# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aocp/overlay/common

PRODUCT_PACKAGES += \
    AoCP \
    AOCPWallpapers \
    PhaseBeam \
    su \
    AppWidgetPicker \
    openvpn \ 

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.kernel.android.checkjni=0

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/aocp/prebuilt/common/app/LatinImeDictionaryPack.apk:system/app/LatinImeDictionaryPack.apk \
    vendor/aocp/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf  \
    vendor/aocp/prebuilt/common/app/AoCPOTA.apk:system/app/AoCPOTA.apk \
    vendor/aocp/prebuilt/common/app/Memo-0-1.5.apk:system/app/Memo-0-1.5.apk \
    vendor/aocp/prebuilt/common/app/SemcMusic.apk:system/app/SemcMusic.apk \
    vendor/aocp/prebuilt/common/app/SemcMusicVisualizer.apk:system/app/SemcMusicVisualizer.apk 
	
# init.d
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/aocp/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/aocp/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/aocp/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/aocp/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/aocp/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/aocp/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/aocp/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/aocp/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/aocp/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/aocp/prebuilt/common/etc/init_trigger.disabled:system/etc/init_trigger.disabled \
    vendor/aocp/prebuilt/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/aocp/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf
    
# Cron
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/aocp/prebuilt/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/aocp/prebuilt/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/aocp/prebuilt/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/aocp/prebuilt/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/aocp/prebuilt/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/aocp/prebuilt/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache 
    
# Adding files needed for extra camera features
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aocp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/aocp/prebuilt/common/media/video/AndroidInSpace.240p.mp4:system/media/video/AndroidInSpace.240p.mp4 \
    vendor/aocp/prebuilt/common/media/video/AndroidInSpace.480p.mp4:system/media/video/AndroidInSpace.480p.mp4 \
    vendor/aocp/prebuilt/common/media/video/Disco.240p.mp4:system/media/video/Disco.240p.mp4 \
    vendor/aocp/prebuilt/common/media/video/Disco.480p.mp4:system/media/video/Disco.480p.mp4 \
    vendor/aocp/prebuilt/common/media/video/Sunset.240p.mp4:system/media/video/Sunset.240p.mp4 \
    vendor/aocp/prebuilt/common/media/video/Sunset.480p.mp4:system/media/video/Sunset.480p.mp4 

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Live wallpapers for all
PRODUCT_PACKAGES += \
		LiveWallpapers \
		LiveWallpapersPicker \
		MagicSmokeWallpapers \
		VisualizationWallpapers \
		librs_jni

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Inherit common build.prop overrides
-include vendor/aocp/configs/common_versions.mk

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
