# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_manta.mk)

# Inherit common product files
$(call inherit-product, vendor/frank/configs/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := frankened_manta
PRODUCT_BRAND := google
PRODUCT_DEVICE := manta
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := samsung

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="mantaray" BUILD_FINGERPRINT="google/mantaray/manta:5.0/LRX21Q/1570415:user/release-keys" PRIVATE_BUILD_DESC="mantaray-user 5.0 LRX21T 1570415 release-keys"

