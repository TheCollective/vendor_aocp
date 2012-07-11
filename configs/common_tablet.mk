# Inherit common tuff
$(call inherit-product, vendor/aocp/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aocp/overlay/common_tablets

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Playa.ogg \
    ro.config.notification_sound=regulus.ogg \
    ro.config.alarm_alert=Alarm_Beep_03.ogg
    
    
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        librs_jni \
        Trebuchet

# Inherit drm blobs
-include vendor/aocp/configs/common_drm_tablet.mk
