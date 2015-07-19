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
