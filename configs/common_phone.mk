$(call inherit-product, vendor/aocp/configs/common_full.mk)

# Inherit drm blobs
-include vendor/aocp/configs/common_drm_phone.mk

PRODUCT_PACKAGES += \
  Mms

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf
