# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IMM76I BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 0
PRODUCT_VERSION_MAINTENANCE = CP-1
PRODUCT_VERSION_GOO =1
PRODUCT_RELEASE_NAME = I717

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IMM76L

# Rom manager properties
PRODUCT_PROPERTY_OVERRIDES += \
ro.modversion=aocp-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).
$(PRODUCT_VERSION_MAINTENANCE)-$(PRODUCT_RELEASE_NAME) \
ro.goo.developerid=aocp \
ro.goo.rom=aocp \
ro.goo.version=$(PRODUCT_VERSION_GOO)
