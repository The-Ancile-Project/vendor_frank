# Inherit AOSP device configuration for flo
$(call inherit-product, device/asus/flo/full_flo.mk)

# Inherit common product files
$(call inherit-product, vendor/frank/configs/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := frank_n7_2013_wifi
PRODUCT_BRAND := google
PRODUCT_DEVICE := flo
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := ASUS

#fmas n7 specific 
PRODUCT_PROPERTY_OVERRIDES += \
   fmas.spkr_6ch=35,20,110  \
   fmas.spkr_2ch=35,25  \
   fmas.spkr_angles=10  \
   fmas.spkr_sgain=0  