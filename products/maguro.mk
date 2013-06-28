# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit TB common bits
$(call inherit-product, vendor/thinkingbridge/config/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/thinkingbridge/config/gsm.mk)

# Tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/thinkingbridge/overlay/tuna

# Setup device specific product configuration.
PRODUCT_NAME := thinkingbridge_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=takju BUILD_FINGERPRINT=google/takju/maguro:4.2.2/JDQ39/398337:user/release-keys PRIVATE_BUILD_DESC="takju-user 4.2.2 JDQ39 398337 release-keys" BUILD_NUMBER=398337

# Maguro specific packages
PRODUCT_PACKAGES += \
    Thinkfree
    
# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/bootanimations/BOOTANIMATION-720x1280.zip:system/media/bootanimation.zip
