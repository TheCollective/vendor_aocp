PRODUCT_BRAND ?= cyanogenmod

# Embed SuperUser
-include vendor/cm-priv/keys.mk 
SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.cyanogenmod.superuser

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
    ro.com.android.dataroaming=false \
    ro.build.selinux=1 \
    service.adb.root=1 \
    persist.sys.root_access=3

ifneq ($(TARGET_BUILD_VARIANT),eng)
# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
endif

# PackagesAppsPrebuilts that common for all devices
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/common/app/AoCPLiveWall.apk:system/app/AoCPLiveWall.apk \
        vendor/aocp/prebuilt/common/app/FileManager.apk:system/app/FileManager.apk \
    
# Backup Tool
ifneq ($(WITH_GMS),true)
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/aocp/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/aocp/prebuilt/common/bin/50-cm.sh:system/addon.d/50-cm.sh \
    vendor/aocp/prebuilt/common/bin/blacklist:system/addon.d/blacklist
endif

# init.d support
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/aocp/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/aocp/prebuilt/common/bin/sysinit:system/bin/sysinit
    
# CM-specific init file
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/etc/init.local.rc:root/init.cm.rc

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/aocp/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

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
    LatinIME \
    BluetoothExt \
    Superuser \
    su

# Optional Aocp packages
PRODUCT_PACKAGES += \
    VideoEditor \
    VoiceDialer \
    SoundRecorder \
    Basic
    
# DSPManager
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf

PRODUCT_PACKAGES += \
    AOCPWallpapers \
    LatinImeDictionary \
    Aspire \
    Music \
    MusicVisualization \
    NoiseField \
    DashClock \
    openvpn \
    QuietTime 

# Extra tools in Aocp
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash 
    
PRODUCT_PACKAGES += \
    CellBroadcastReceiver

# rsync
PRODUCT_PACKAGES += \
    rsync

PRODUCT_PACKAGE_OVERLAYS += vendor/aocp/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/aocp/overlay/common

PRODUCT_VERSION_MAJOR = 10
PRODUCT_VERSION_MINOR = 2

AOCP_VERSION_MAJOR = 6
AOCP_VERSION_MINOR = 3.5

    AOCP_VERSION := $(AOCP_VERSION_MAJOR).$(AOCP_VERSION_MINOR)
    
    CM_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.aocp.version=$(AOCP_VERSION) \
  ro.modversion=$(CM_VERSION)
  ro.cm.version=$(CM_VERSION)

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

ifeq ($(NEEDS_FLASHLIGHT), true)

PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/common/app/flashlight.apk:system/app/flashlight.apk

endif

-include vendor/aocp/sepolicy/sepolicy.mk
