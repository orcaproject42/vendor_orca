# Inherit AOSP device configuration for l900.
$(call inherit-product, device/samsung/l900/full_l900.mk)

# Inherit CDMA common stuff.
$(call inherit-product, vendor/orca/configs/cdma.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/orca/configs/common.mk)

# t0ltecdma Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/note2-common

# Setup device specific product configuration.
PRODUCT_NAME := orca_l900
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := l900
PRODUCT_MODEL := SPH-L900
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltespr TARGET_DEVICE=t0ltecdma BUILD_FINGERPRINT="samsung/t0ltespr/t0ltespr:4.1.1/JRO03C/L900VPALJC:user/release-keys" PRIVATE_BUILD_DESC="t0ltespr-user 4.1.1 JRO03C L900VPALJC release-keys"

# Copy bootanimation.zip
PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

