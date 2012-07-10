$(call inherit-product, device/samsung/quincyatt/full_quincyatt.mk)

# Inherit some common aocp stuff.
$(call inherit-product, vendor/aocp/configs/gsm.mk)

# Inherit some common aocp stuff.
$(call inherit-product, vendor/aocp/configs/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I717 BUILD_FINGERPRINT="samsung/SGH-I717/SGH-I717:4.0.3/IML74K/UCLD4:eng/test-keys" PRIVATE_BUILD_DESC="SGH-I717-eng 4.0.3 IML74K UCLD4 test-keys"

TARGET_BOOTANIMATION_NAME := bootanimation_1280_800

PRODUCT_NAME := aocp_quincyatt
PRODUCT_DEVICE := quincyatt