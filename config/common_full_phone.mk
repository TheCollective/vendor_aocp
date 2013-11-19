# Inherit common CM stuff
$(call inherit-product, vendor/aocp/config/common_full.mk)

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Kuma.ogg \
    ro.config.notification_sound=Deneb.ogg \
    ro.config.alarm_alert=Hassium.ogg

PRODUCT_PACKAGES += \
  Mms




$(call inherit-product, vendor/aocp/config/telephony.mk)
