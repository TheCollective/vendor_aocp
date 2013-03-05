PRODUCT_BRAND ?= cyanogenmod



PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/bootanimation/$(TARGET_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip





PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Copy over the changelog to the device


# PackagesAppsPrebuilts that common for all devices
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/common/app/AoCPLiveWall.apk:system/app/AoCPLiveWall.apk \
        vendor/aocp/prebuilt/common/app/FileManager.apk:system/app/FileManager.apk \
        vendor/aocp/prebuilt/common/app/SuperSU.apk:system/app/SuperSU.apk

# Use prebuilt su until fixed when built
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/xbin/su:system/xbin/su
    
# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/aocp/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/aocp/prebuilt/common/bin/50-cm.sh:system/addon.d/50-cm.sh \
    vendor/aocp/prebuilt/common/bin/blacklist:system/addon.d/blacklist

# init.d support
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/aocp/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# CM-specific init file
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/etc/init.local.rc:root/init.cm.rc

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/aocp/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# Terminal Emulator
PRODUCT_COPY_FILES +=  \
#    vendor/aocp/proprietary/Term.apk:system/app/Term.apk \
#    vendor/aocp/proprietary/lib/armeabi/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/aocp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aocp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# This is CM!
PRODUCT_COPY_FILES += \
    vendor/aocp/config/permissions/com.cyanogenmod.android.xml:system/etc/permissions/com.cyanogenmod.android.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/etc/mkshrc:system/etc/mkshrc

# T-Mobile theme engine
include vendor/aocp/config/themes_common.mk

# Required Aocp packages
PRODUCT_PACKAGES += \
    Camera \
    Development \
    LatinIME 

# Optional Aocp packages
PRODUCT_PACKAGES += \
    VideoEditor \
    VoiceDialer \
    SoundRecorder \
    Basic


PRODUCT_PACKAGES += \
    AOCPWallpapers \
    LatinImeDictionary \
    Launcher2 \
    Music \
    MusicFX \
    MusicVisualization \
    NoiseField \
    DashClock \
    openvpn \
    QuietTime \
    SuperSU 


# Extra tools in Aocp
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash 
    



# rsync
PRODUCT_PACKAGES += \
    rsync

PRODUCT_PACKAGE_OVERLAYS += vendor/aocp/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/aocp/overlay/common

PRODUCT_VERSION_MAJOR = 10
PRODUCT_VERSION_MINOR = 1

AOCP_VERSION_MAJOR = 5
AOCP_VERSION_MINOR = 0




    AOCP_VERSION := $(AOCP_VERSION_MAJOR).$(AOCP_VERSION_MINOR)
    
    CM_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)


PRODUCT_PROPERTY_OVERRIDES += \
  ro.aocp.version=$(AOCP_VERSION) \
  ro.modversion=$(CM_VERSION)

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml


ifeq ($(PRODUCT_DEVICE), quincyatt)
# S-Pen App
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/common/app/Memo-0-1.5.apk:system/app/Memo-0-1.5.apk


#OTA
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/common/app/xhdpi/AoCPOTA.apk:system/app/AoCPOTA.apk

endif

ifeq ($(PRODUCT_DEVICE), captivatemtd)

PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/common/app/flashlight.apk:system/app/flashlight.apk

endif

-include $(WORKSPACE)/hudson/image-auto-bits.mk
