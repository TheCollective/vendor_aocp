#Device Settings for Samsung Galaxy phones
PRODUCT_PACKAGE_OVERLAYS += vendor/aocp/overlay/sgs

#samsung service mode for device settings
PRODUCT_COPY_FILES += \
    vendor/aocp/prebuilt/common/app/SamsungServiceMode.apk:system/app/SamsungServiceMode.apk
