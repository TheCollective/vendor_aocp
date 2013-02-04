$(call inherit-product-if-exists, vendor/aocp/prebuilt/prebuilts.mk)

# T-Mobile theme engine
include vendor/aocp/configs/themes_common.mk

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aocp/overlay/common

PRODUCT_PACKAGES += \
    AOCPWallpapers \
    AppWidgetPicker \
    Aspire \
    LatinImeDictionary \
    Music \
    MusicFX \
    MusicVisualization \
    NoiseField \
    openvpn \
    QuietTime \
    SuperSU 

# PackagesAppsPrebuilts that common for all devices
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/common/app/AoCPLiveWall.apk:system/app/AoCPLiveWall.apk \
        vendor/aocp/prebuilt/common/app/com.adobe.air-1.apk:system/app/com.adobe.air-1.apk \
        vendor/aocp/prebuilt/common/app/com.adobe.flashplayer-1.apk:system/app/com.adobe.flashplayer-1.apk \
        vendor/aocp/prebuilt/common/app/FileManager.apk:system/app/FileManager.apk \
        vendor/aocp/prebuilt/common/app/TitaniumBackup.apk:system/app/TitaniumBackup.apk \
        vendor/aocp/prebuilt/common/app/LatinImeDictionaryPack.apk:system/app/LatinImeDictionaryPack.apk

# Use prebuilt su until fixed when built
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/xbin/su:system/xbin/su

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/aocp/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/aocp/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/aocp/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions 
    

# init.d
PRODUCT_COPY_FILES += \
    
    vendor/aocp/prebuilt/common/bin/sysinit:system/bin/sysinit
# userinit support
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit
    vendor/aocp/prebuilt/common/etc/init.local.rc:root/init.aocp.rc 

PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/aocp/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# Nam configuration script
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/bin/modelid_cfg.sh:system/bin/modelid_cfg.sh
PRODUCT_COPY_FILES +=  \
    vendor/aocp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aocp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    Camera \
    Development \
    LatinIME \
    Superuser \
    su \
    VideoEditor \
    VoiceDialer \
    SoundRecorder \
    Basic \
    audio_effects.conf \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    lsof

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Inherit common build.prop overrides
-include vendor/aocp/configs/common_versions.mk
