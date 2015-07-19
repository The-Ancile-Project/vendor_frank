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

#Build.prop overide for lte
PRODUCT_PROPERTY_OVERRIDES += \
ro.telephony.default_network=10 \
telephony.lteOnCdmaDevice=1