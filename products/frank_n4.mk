# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit common product files
$(call inherit-product, vendor/frank/configs/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := frank_n4
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="occam" BUILD_FINGERPRINT="google/occam/mako:5.0/LRX21Q/1570415:user/release-keys" PRIVATE_BUILD_DESC="occam-user 5.0 LRX21T 1570415 release-keys"

#Build.prop overide for lte
PRODUCT_PROPERTY_OVERRIDES += \
ro.telephony.default_network=10 \
telephony.lteOnCdmaDevice=1