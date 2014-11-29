# Inherit AOSP device configuration for flo
$(call inherit-product, device/asus/deb/aosp_deb.mk)

# Inherit common product files
$(call inherit-product, vendor/frank/configs/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := frankened_deb
PRODUCT_BRAND := google
PRODUCT_DEVICE := deb
PRODUCT_MODEL := Nexus 7 LTE
PRODUCT_MANUFACTURER := ASUS

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="razorg" BUILD_FINGERPRINT="google/razorg/deb:5.0/LRX21Q/1570415:user/release-keys" PRIVATE_BUILD_DESC="razorg-user 5.0 LRX21Q 1570415 release-keys"