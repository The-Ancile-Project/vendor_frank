# Inherit AOSP device configuration for hammerhead
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files
$(call inherit-product, vendor/frank/configs/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := frank_n5
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
BUILD_FINGERPRINT=google/hammerhead/hammerhead:5.1.1/LMY48G/1914015:user/release-keys \
PRIVATE_BUILD_DESC="hammerhead-user 5.1.1 LMY48G 1914015 release-keys"
