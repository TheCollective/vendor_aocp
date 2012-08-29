$(call inherit-product, device/samsung/d2att/full_d2att.mk)

# Inherit some common aocp stuff.
$(call inherit-product, vendor/aocp/configs/gsm.mk)

# Inherit some common aocp stuff.
$(call inherit-product, vendor/aocp/configs/common_phone.mk)

# Camera
PRODUCT_PACKAGES += \
    Camera
	
#bootanimation
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip

#OTA
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/common/app/xhdpi/AoCPOTA.apk:system/app/AoCP.apk

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2uc TARGET_DEVICE=d2att BUILD_FINGERPRINT="d2uc-user 4.0.4 IMM76D I747UCALEM release-keys" PRIVATE_BUILD_DESC="samsung/d2uc/d2att:4.0.4/IMM76D/I747UCALEM:user/release-keys"

PRODUCT_NAME := aocp_d2att
PRODUCT_DEVICE := d2att
