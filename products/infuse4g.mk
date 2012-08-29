# Infuse is a GSM phone
$(call inherit-product, vendor/aocp/configs/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := Infuse4G

TARGET_BOOTANIMATION_NAME := bootanimation_480_800

# Inherit some common CM stuff.
$(call inherit-product, vendor/aocp/configs/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/infuse4g/full_infuse4g.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aocp/overlay/aries-common

# OTA
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/common/app/hdpi/AoCPOTA.apk:system/app/AoCP.apk

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := infuse4g
PRODUCT_NAME := aocp_infuse4g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-I997

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I997 TARGET_DEVICE=SGH-I997 BUILD_FINGERPRINT=samsung/SGH-I997/SGH-I997:2.3.6/GINGERBREAD/UCLB3:user/release-keys PRIVATE_BUILD_DESC="SGH-I997-user 2.3.6 GINGERBREAD UCLB3 release-keys"
