# Inherit common tuff
$(call inherit-product, vendor/aocp/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aocp/overlay/common_tablets

# Inherit drm blobs
-include vendor/aocp/configs/common_drm_tablet.mk

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf
