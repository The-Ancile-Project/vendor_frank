# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files
$(call inherit-product, vendor/frank/configs/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := frank_n7_2012_wifi
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7 WiFi
PRODUCT_MANUFACTURER := ASUS
