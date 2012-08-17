$(call inherit-product, vendor/aocp/configs/common.mk)

# Inherit drm blobs
-include vendor/aocp/configs/common_drm_phone.mk

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf
