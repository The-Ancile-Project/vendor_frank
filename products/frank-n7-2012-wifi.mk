# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files
$(call inherit-product, vendor/frank/configs/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := frank-n7-2012-wifi
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7 WiFi
PRODUCT_MANUFACTURER := ASUS

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="grouper" BUILD_FINGERPRINT="google/grouper/grouper:5.0/LRX21Q/1570415:user/release-keys" PRIVATE_BUILD_DESC="grouper-user 5.0 LRX21T 1570415 release-keys"