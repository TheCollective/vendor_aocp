# Inherit common CM stuff
$(call inherit-product, vendor/aocp/config/common.mk)

# Bring in all audio files
include frameworks/base/data/sounds/NewAudio.mk



# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Orion.ogg \
    ro.config.notification_sound=Deneb.ogg \
    ro.config.alarm_alert=Hassium.ogg

PRODUCT_PACKAGES += \
  Mms

PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/bootanimation/$(TARGET_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip

