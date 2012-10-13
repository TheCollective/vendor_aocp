$(call inherit-product, device/samsung/skyrocket/full_skyrocket.mk)

# Inherit some common aocp stuff.
$(call inherit-product, vendor/aocp/configs/gsm.mk)

# Inherit some common aocp stuff.
$(call inherit-product, vendor/aocp/configs/common_phone.mk)

# Camera
PRODUCT_PACKAGES += \
    Camera
	
# S-Pen App
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/common/app/Memo-0-1.5.apk:system/app/Memo-0-1.5.apk

#OTA
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/common/app/hdpi/AoCPOTA.apk:system/app/AoCPOTA.apk

#bootanimation
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I727 TARGET_DEVICE=SGH-I727 BUILD_FINGERPRINT="samsung/SGH-I727/SGH-I727:4.1.1/IMM76D/UCLF6:user/release-keys" PRIVATE_BUILD_DESC="SGH-I727-user 4.1.1 IMM76D UCLF6 release-keys"

TARGET_BOOTANIMATION_NAME := bootanimation_480_800

PRODUCT_NAME := aocp_skyrocket
PRODUCT_DEVICE := skyrocket
