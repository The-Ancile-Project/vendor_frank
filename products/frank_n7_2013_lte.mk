# Inherit AOSP device configuration for flo
$(call inherit-product, device/asus/deb/aosp_deb.mk)

# Inherit common product files
$(call inherit-product, vendor/frank/configs/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := frank_n7_2013_lte
PRODUCT_BRAND := google
PRODUCT_DEVICE := deb
PRODUCT_MODEL := Nexus 7 LTE
PRODUCT_MANUFACTURER := ASUS

#fmas n7 specific 
PRODUCT_PROPERTY_OVERRIDES += \
   fmas.spkr_6ch=35,20,110  \
   fmas.spkr_2ch=35,25  \
   fmas.spkr_angles=10  \
   fmas.spkr_sgain=0  