$(call inherit-product, device/lge/h830/full_h830.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 1080x608

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_h830
PRODUCT_DEVICE := h830
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g5" \
    PRODUCT_NAME="h1_tmo_us" \
    BUILD_FINGERPRINT="lge/h1_tmo_us/h1:7.0/NRD90U/1719814198c76:user/release-keys" \
    PRIVATE_BUILD_DESC="h1_tmo_us-user 7.0 NRD90U 1719814198c76 release-keys"
