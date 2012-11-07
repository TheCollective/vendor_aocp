# Specify phone tech before including full_phone
$(call inherit-product, vendor/aocp/configs/gsm.mk)

# Release Name
PRODUCT_RELEASE_NAME := DHD

# Inherit CM stuff
$(call inherit-product, vendor/aocp/configs/common_phone.mk)

# Inherit AOSP device configuration for ace
$(call inherit-product, device/htc/ace/device_ace.mk)

PRODUCT_NAME := aocp_ace
PRODUCT_DEVICE := ace
PRODUCT_BRAND := htc_wwe
PRODUCT_MODEL := Desire HD
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ace BUILD_FINGERPRINT=google/yakju/maguro:4.1.2/JZO54K/330937:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.1.2 JZO54K 330937 release-keys"

# Product Files
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/common/app/hdpi/AoCPOTA.apk:system/app/AoCPOTA.apk \
        vendor/aocp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
