# Inherit device configuration for VZW Droid RAZR.
$(call inherit-product, device/motorola/spyder/device_spyder.mk)

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

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=xt910 TARGET_DEVICE=xt910 BUILD_ID=IMM76D BUILD_FINGERPRINT="RTGB/umts_spyder_umts/umts_spyder:4.0.4_r1.2/IMM76D/20120807:user/release-keys" PRIVATE_BUILD_DESC="umts_spyder-user 4.0.4_r1.2 IMM76D 20120807 release-keys"
  
   
PRODUCT_NAME := aocp_spyder
PRODUCT_DEVICE := spyder
