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

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="razor" BUILD_FINGERPRINT="google/razor/flo:5.0.2/LRX22G/1649326:user/release-keys" PRIVATE_BUILD_DESC="razor-user 5.0.2 LRX22G 1649326 release-keys"

#fmas n7 specific 
PRODUCT_PROPERTY_OVERRIDES += \
   fmas.spkr_6ch=35,20,110  \
   fmas.spkr_2ch=35,25  \
   fmas.spkr_angles=10  \
   fmas.spkr_sgain=0  \