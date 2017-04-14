$(call inherit-product, device/lge/h830/full_h830.mk)

# Inherit some common xenon stuff.
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Overlays (inherit after vendor/xenonhd to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := xenonhd_h830

#XenonHD stuff
PRODUCT_PROPERTY_OVERRIDES += \
 ro.xenonhd.maintainer=sickkside13

# Root option
ROOT_METHOD=su

PRODUCT_PACKAGES += \
    KernelAdiutor \
    MiXplorer

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g5" \
    PRODUCT_NAME="h1_tmo_us" \
    BUILD_FINGERPRINT="lge/h1_tmo_us/h1:7.0/NRD90U/1631213003394:user/release-keys" \
    PRIVATE_BUILD_DESC="h1_tmo_us-user 7.0 NRD90U 1631213003394 release-keys"
