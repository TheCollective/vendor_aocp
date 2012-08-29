$(call inherit-product, device/samsung/quincyatt/full_quincyatt.mk)

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
        vendor/aocp/prebuilt/common/app/xhdpi/AoCPOTA.apk:system/app/AoCP.apk

#bootanimation
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I717 BUILD_FINGERPRINT="samsung/SGH-I717/SGH-I717:4.0.3/IML74K/UCLD4:eng/test-keys" PRIVATE_BUILD_DESC="SGH-I717-eng 4.0.3 IML74K UCLD4 test-keys"

TARGET_BOOTANIMATION_NAME := bootanimation_1280_800

PRODUCT_NAME := aocp_quincyatt
PRODUCT_DEVICE := quincyatt
