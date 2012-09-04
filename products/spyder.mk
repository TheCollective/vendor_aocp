# Inherit device configuration for VZW Droid RAZR.
$(call inherit-product, device/moto/spyder/device_spyder.mk)

# Inherit some common aocp stuff.
$(call inherit-product, vendor/aocp/configs/common_phone.mk)

# Inherit some common aocp stuff.
#$(call inherit-product, vendor/aocp/configs/gsm.mk)

# Camera
PRODUCT_PACKAGES += \
    Camera

# boot animation
PRODUCT_COPY_FILES += \
vendor/aocp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip

# Release name and versioning
PRODUCT_RELEASE_NAME := DROID RAZR
   
PRODUCT_NAME := aocp_spyder
PRODUCT_DEVICE := spyder
