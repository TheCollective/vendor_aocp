# Inherit common CM stuff
$(call inherit-product, vendor/aocp/config/common.mk)

# Bring in all audio files
include frameworks/base/data/sounds/OriginalAudio.mk

# Extra Ringtones
# include frameworks/base/data/sounds/AudioPackageNewWave.mk

# Bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)



# Optional CM packages
PRODUCT_PACKAGES += \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers 
    
