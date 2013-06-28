# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit TB common bits
$(call inherit-product, vendor/thinkingbridge/config/common_tablet.mk)

# Grouper overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/thinkingbridge/overlay/grouper

# Setup device specific product configuration.
PRODUCT_NAME := thinkingbridge_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=nakasi BUILD_FINGERPRINT=google/nakasi/grouper:4.2.2/JDQ39/405518:user/release-keys PRIVATE_BUILD_DESC="nakasi-user 4.2.2 JDQ39 405518 release-keys" BUILD_NUMBER=405518

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/bootanimations/BOOTANIMATION-800x1280.zip:system/media/bootanimation.zip
