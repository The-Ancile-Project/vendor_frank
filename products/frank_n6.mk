# Inherit AOSP device configuration for shamu
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Inherit common product files
$(call inherit-product, vendor/frank/configs/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := frank_n6
PRODUCT_DEVICE := shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Shamu
PRODUCT_MANUFACTURER := motorola

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="shamu" BUILD_FINGERPRINT="google/shamu/shamu:5.0/LRX21Q/1570415:user/release-keys" PRIVATE_BUILD_DESC="shamu-user 5.0 LRX21T 1570415 release-keys"

# Local path for prebuilts
LOCAL_PATH:= vendor/frank/prebuilts/shamu

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/root/fstab.shamu:root/fstab.shamu 
   
