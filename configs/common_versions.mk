# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JOP40D_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell date +%h-%d-%y)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.aocp.version=$(TARGET_PRODUCT)-$(PRODUCT_VERSION_MAINTENANCE)-$(DATE)

PRODUCT_VERSION_MAINTENANCE = CP-5

# Goo updater app
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=aocp \
    ro.goo.rom=aocp \
    ro.goo.version=5

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
