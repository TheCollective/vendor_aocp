$(call inherit-product-if-exists, vendor/aocp/prebuilt/prebuilts.mk)

# T-Mobile theme engine
include vendor/aocp/configs/themes_common.mk

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aocp/overlay/common

PRODUCT_PACKAGES += \
    AoCP \
    AOCPWallpapers \
    AppWidgetPicker \
    Aspire \
    LatinImeDictionary \
    Music \
    MusicFX \
    MusicVisualization \
    NoiseField \
    openvpn \
    SuperSU 

# Use prebuilt su until fixed when built
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/xbin/su:system/xbin/su

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

PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/aocp/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf

# init.d
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/aocp/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/aocp/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/aocp/prebuilt/common/bin/sysinit:system/bin/sysinit

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Inherit common build.prop overrides
-include vendor/aocp/configs/common_versions.mk
