# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from umi device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := umi
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_umi
PRODUCT_MODEL := qssi system image for arm64

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := umi
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="qssi-user 10 QKQ1.191117.002 V11.0.5.0.QJBCNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := qti/qssi/qssi:10/QKQ1.191117.002/V11.0.5.0.QJBCNXM:user/release-keys
