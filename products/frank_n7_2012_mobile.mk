# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/tilapia/full_tilapia.mk)

# Inherit common product files
$(call inherit-product, vendor/frank/configs/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := frank_n7_2012_mobile
PRODUCT_BRAND := google
PRODUCT_DEVICE := tilapia
PRODUCT_MODEL := Nexus 7 Mobile
PRODUCT_MANUFACTURER := ASUS

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="tilapia" BUILD_FINGERPRINT="google/grouper/grouper:5.0.2/LRX22G/1649326:user/release-keys" PRIVATE_BUILD_DESC="tilapia-user 5.0.2 LRX22G 1649326 release-keys"